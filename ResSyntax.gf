resource ResSyntax = open Prelude in {


  param Number = Sg | Pl ;
  param Possessive = S1 | S3 | SNull ;
  -- Case C0 is a dummy case to totalize the map VerbValencyCases below
  param Case = C0 | C1 | C2 | C3 | C4 | C5 | C6 | C7  ;
  param Person = P1 | P3 | P7; --| P2 | P3 | P5 | P7; -- | PNull ;  -- we need the P3 and P7 for cheking the noun endings compatiblities (compatible_nb_pers), if we exclude them then noun with endings are not parsed
  -- Original definition of Possessive and PersonCat, which turned out to be much too large,
  -- with compilation times of up to 5 minutes and file sizes of SyntaxCon.gfo of up to 0.5 GBtye
  -- param Possessive = S1 | S2 | S3 | S4 | S5 | S3SIM | SNull ;
  -- param Person = P1 | P2 | P3 | P4 | P5 | P6 | P7 | P8 ;


  param Time = Aorist | Past | Future ;
  param VoiceCat = Refl | Pass | Coop | Caus | VoiceNull ;

  -- Valency:
  -- SV0: Subject and predicate (verb) with 0 arguments / objects
  -- SV1: Subject and predicate (verb) with 1 argument / object
  -- SV2: Subject and predicate (verb) with 2 arguments / objects
  -- SVIndiff: any arguments are accepted
  param VerbValency = SV0 | SV1 | SV2| SVIndiff ;
  -- Position of argument of a verb, counting from left to right in the syntax tree.
  -- Thus, in a verb phrase np1 np2 v, np1 has PA1 and np2 has PA2
  param VerbArgPos = PA1 | PA2 ;

  -- TODO: one would like to have this kind of definition here, but this does not seem to work
  -- lincat VerbValencyCases = VerbArgPos => Case ;



oper

      ------------------------------------------------------------
      -- Boolean functions
      ------------------------------------------------------------

       and: Bool -> Bool -> Bool = \b1, b2 ->
       case b1 of {
            True => b2;
            False => False
       };
       
       or: Bool -> Bool -> Bool = \b1, b2 ->
       case b1 of {
            False => b2;
            True => True
       };


       not: Bool -> Bool = \b ->
       case b of {
            False => True;
            True => False
       };


      ------------------------------------------------------------
      -- Equality tests
      ------------------------------------------------------------

      -- the function that checks the Number equality of NP and VP
       eqNumber : Number -> Number -> Bool =
       \p1, p2 -> case p1 of {
            Sg => case p2 of {Sg => True; _ => False};
            Pl => case p2 of {Pl => True; _ => False}
            };                               

        -- different type, still has to be defined
       eqPerson : Person -> Person -> Bool =
       \pr1, pr2 -> case pr1 of {
             P1 => case pr2 of {P1 => True; _ => False};
             --P2 => case pr2 of {P2 => True; _ => False};
             P3 => case pr2 of {P3 => True;  _ => False};
             -- P4 => case pr2 of {P4 => True; _ => False};
             --P5 => case pr2 of {P5 => True; _ => False};
             -- P6 => case pr2 of {P6 => True; _ => False};
             P7 => case pr2 of {P7 => True; _ => False}
             -- P8 => case pr2 of {P8 => True; _ => False}
             -- PNull => case pr2 of {PNull => True; _ => False}
             };

       compatiblePerson_np_np : Person -> Person -> Bool =
       \pr1, pr2 -> case pr1 of {
             P1 => case pr2 of {P1 => True; _ => False};
             --P2 => case pr2 of {P2 => True; _ => False};
             P3 => case pr2 of {P3 => True;  _ => False}; --PNull => True;
             -- P4 => case pr2 of {P4 => True; _ => False};
             --P5 => case pr2 of {P5 => True; _ => False};
             -- P6 => case pr2 of {P6 => True; _ => False};
             P7 => case pr2 of {P7 => True;  _ => False}   --PNull => True;
             -- P8 => case pr2 of {P8 => True; _ => False}
              --PNull => case pr2 of {PNull => True; _ => False}
             };

       eqCase: Case -> Case -> Bool = \c1, c2 ->
       case c1 of {
            C0 => case c2 of {C0 => True; _ => False};
            C1 => case c2 of {C1 => True; _ => False};
            C2 => case c2 of {C2 => True; _ => False};
            C3 => case c2 of {C3 => True; _ => False};
            C4 => case c2 of {C4 => True; _ => False};
            C5 => case c2 of {C5 => True; _ => False};
            C6 => case c2 of {C6 => True; _ => False};
            C7 => case c2 of {C7 => True; _ => False}
            };


      ------------------------------------------------------------
      -- Valency: compatibility
      ------------------------------------------------------------

      -- TODO: currently not used
       compatibleSV0: VerbValency -> Bool =  \vv ->
       case vv of {
            SV0 => True;
            SVIndiff => True;
            _ => False
       };

       -- compatibility test of one object (noun phrase) with verb
       -- here: vv: valency of verb; vvc: verb arg position to case mapping; c: case of noun phrase
       -- Additional assumption: the noun case must not be genitive (C2)
       compatibleSV1: VerbValency -> (VerbArgPos => Case) -> Case -> Bool =  \vv, vvc, c ->
       case vv of {
            SV1 => eqCase (vvc!PA1) c;
            SVIndiff => not (eqCase c C2);
            _ => False
       };

       -- compatibility test of two objects (noun phrases) with verb
       -- here: vv: valency of verb; vvc: verb arg position to case mapping; c1, c2: cases of noun phrase 1/2
       -- Additional assumption: the noun case must not be genitive (C2)
       compatibleSV2: VerbValency -> (VerbArgPos => Case) -> Case -> Case -> Bool =  \vv, vvc, c1, c2 ->
       case vv of {
            SV2 => or (and (eqCase (vvc!PA1) c1) (eqCase (vvc!PA2) c2))
                      (and (eqCase (vvc!PA1) c2) (eqCase (vvc!PA2) c1));
            SVIndiff => and (not (eqCase c1 C2)) (not (eqCase c2 C2));
            _ => False
       };

     compatible_nb_pers: Number -> Number -> Bool =
       \enb, eperson ->
         case enb of {
              Sg => case eperson of {
                    Sg => True;
                    Pl => False  -- in general should be false in order to avoid the 4 ambiguity, but for the sentence "біз_R_SIM оқушы_R_ZE лар_N1 мыз_P5" here is needed the option "True"
                    };
              Pl => case eperson of {
                    Sg => False;
                    Pl => True
                    }
              };

      ------------------------------------------------------------
      -- Combining parts of speech
      ------------------------------------------------------------

      -- when the NP and VP joins  then it should be checked the Number agreement between NP and VP.
      -- The VP Number should take the Number of NP. Here, the NP is a subject.
      -- The output of this function is a Sentence, Sentence has only two variables,
      -- so that we indicate only these two variables.
      np_vp_to_s:
         {s:Str; nb: Number; c: Case; pr: Person} ->
         {s:Str; nb: Number; pr: Person} ->
         {s:Str; nb: Number; pr: Person} =
             \np, vp -> case (and (eqCase np.c C1) (and (eqNumber np.nb vp.nb) (eqPerson np.pr vp.pr))) of {            
             True => {s = np.s ++ vp.s ; nb = np.nb; pr = np.pr; };
             False  => {s = "_" ; nb = Sg; pr = np.pr;  }
             };

     

      
       np_np_to_s:
         {s:Str; nb: Number; pr: Person} ->
         {s:Str; nb: Number; pr: Person} ->
         {s:Str; nb: Number; pr: Person} =
            \np1, np2 -> case and (eqNumber np1.nb np2.nb) (compatiblePerson_np_np np1.pr np2.pr) of {       
             True => {s = np1.s ++ np2.s ; nb = np1.nb; pr = np1.pr; };
             False  => {s = "_"  ; nb = Sg; nb = np1.nb; pr = np2.pr; }
             };  


      -- when the NP and V joins then NP is not a subject, NP is an object of Verb.
      -- There is no Number agreement between NP and V.
      -- The output of this function is Verb Phrase with Object. VP has five variables,
      -- so that we indicate these five variables.
     
      np_v_to_vp:
        {s:Str; nb: Number; c: Case} ->
        {s:Str; vv: VerbValency; vvc: VerbArgPos => Case; vc: VoiceCat; t:Time; pr: Person; nb: Number } ->
        {s:Str; vv: VerbValency; vvc: VerbArgPos => Case; vc: VoiceCat; t:Time; pr: Person; nb: Number} =
	    \np, v -> case compatibleSV1 v.vv v.vvc np.c of {
                      True => {s = np.s ++ v.s ; vv= v.vv; vvc = v.vvc; vc = v.vc; t = v.t; pr = v.pr; nb = v.nb;};
                      False => {s = "_" ; vv= v.vv; vvc = v.vvc; vc = v.vc; t = v.t; pr = v.pr; nb = v.nb;}
                      };

        
      -- Verb Phrase with two Objects. To avoid ambiguity the Case of the first NP should take C4 (accusative case) 
      np_np_v_to_vp:
        {s:Str; nb: Number; c: Case} ->
        {s:Str; nb: Number; c: Case} ->
        {s:Str; vv: VerbValency; vvc: VerbArgPos => Case; vc: VoiceCat; t:Time; pr: Person; nb: Number } ->
        {s:Str; vv: VerbValency; vvc: VerbArgPos => Case; vc: VoiceCat; t:Time; pr: Person; nb: Number} =
	    \np1, np2, v -> case compatibleSV2 v.vv v.vvc np1.c np2.c of {
            True => {s = np1.s ++ np2.s ++ v.s ; vv = v.vv; vvc = v.vvc; vc = v.vc; t = v.t; pr = v.pr; nb = v.nb;};
            False  => {s = "_" ; vv = v.vv; vvc = v.vvc; vc = v.vc; t = v.t; pr = v.pr; nb = v.nb;}
            };

       -- TODO: not clear whether a check has to be carried out on PersonCat
      rc_np_to_np:
        {s:Str} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} =
            \rc, np -> {s = rc.s ++ np.s; nb = np.nb; p = np.p; c = np.c; pr = np.pr; };


      -- below, taking s = "_" in the error case provokes in fact an error (phrase not parsable)
      np_np_to_np:
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} =
	    \np1, np2 -> case np1.c of {
            C2 => {s = np1.s ++ np2.s ; nb = np2.nb; p = np2.p; c = np2.c; pr = np2.pr; };
            _  => {s = "_" ; nb = np2.nb; p =np2.p; c = np2.c; pr = np2.pr; }
            };


      np_vadj_to_rc:
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} =
            \np, vadj -> {s = np.s ++ vadj.s; nb = np.nb; p = np.p; c = np.c; pr = np.pr;};



      

      -- TODO: take into account the Personcat of adjectives, which still have to be added
      adj_nom_to_nom:
        {s:Str} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} =
            \adj, nom -> {s = adj.s ++ nom.s; nb = nom.nb; p = nom.p; c = nom.c; pr = nom.pr; };

      

      num_nom_to_nom:
        {s:Str} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} ->
        {s:Str; nb: Number; p: Possessive; c: Case; pr: Person} =
            \num, nom -> {s = num.s ++ nom.s; nb = nom.nb; p = nom.p; c = nom.c; pr = nom.pr;};

      join:
        {s:Str} ->
        {s:Str} ->
        {s:Str} =
            \sr1, sr2 -> {s = sr1.s ++ sr2.s; };

}
