concrete SyntaxCon of SyntaxAbs = open Prelude, ResSyntax in {


  lincat
        S= {s:Str; nb: Number; pr: Person};
        NP={s:Str; nb: Number; p: Possessive; c: Case; pr: Person};
	
	N = {s:Str; nb: Number; p: Possessive; c: Case; pr: Person};
	Nominal = {s:Str; nb: Number; p: Possessive; c: Case; pr: Person};
	
	VP={s:Str; vv: VerbValency; vvc: VerbArgPos => Case; t: Time; vc: VoiceCat; pr: Person; nb: Number};
	V= {s:Str; vv: VerbValency; vvc: VerbArgPos => Case; t: Time; vc: VoiceCat; pr: Person; nb: Number};
        RC={s:Str};
	VAdj={s:Str};

	NStem={s:Str};
	VStem={s:Str; vv: VerbValency; vvc: VerbArgPos => Case};
	VAdjSuffix={s:Str};

	ENumber ={s:Str; nb: Number};
      	EPossessive ={s:Str; p: Possessive};
        ECase ={s:Str; c: Case};

        EPersonN = {s:Str; pr: Person; nb: Number};

        EPersonV = {s:Str; pr: Person; nb: Number};

        Pron={s:Str; nb: Number; p: Possessive; c: Case; pr: Person};
        Tense = {s:Str; t: Time};
        Voice = {s:Str; vc: VoiceCat};
        Adj = {s: Str};
        ABE = {s: Str};
        Num = {s: Str};
        
  lin
        -- Rules
        NPVPToS np vp = np_vp_to_s np vp ;
        NPNPToS np1 np2 = np_np_to_s np1 np2;

        VPwithObj np v = np_v_to_vp np v;

        VPwith2Obj np1 np2 v = np_np_v_to_vp np1 np2 v;
        
        RCNPToNP rc np = rc_np_to_np rc np;      
        NPNPToNP np1 np2 = np_np_to_np np1 np2;
        NPVAdjToRC np vadj = np_vadj_to_rc np vadj;
        VAdjToRC vadj = vadj;
        NToNominal n  = n;
        NominalToNP n  = n;
        
        PronToNP pron = pron;
        VAdjPlupT vstem vadjsuffix = join vstem vadjsuffix;

        NounDecompos nstem enb eposs ecase eperson =
          case compatible_nb_pers enb.nb eperson.nb of {
               False => {s = "_"; nb = eperson.nb; p = eposs.p; c = ecase.c; pr = eperson.pr; } ;
               True => {s = nstem.s ++ enb.s ++ eposs.s ++ ecase.s ++ eperson.s; nb = eperson.nb; p = eposs.p; c = ecase.c; pr = eperson.pr; }
          };

        

        VToVP v  = v;
        VerbDecompos vstem vvoice vtime vperson =
                     {s = vstem.s ++ vvoice.s ++ vtime.s ++ vperson.s; vv = vstem.vv; vvc = vstem.vvc; vc = vvoice.vc; t = vtime.t; pr = vperson.pr; nb = vperson.nb; };
        AdjNominalToNominal adj nom = adj_nom_to_nom adj nom;
        AdjDer n abe = join n abe;
        NumNominalToNominal num nom = num_nom_to_nom num nom;
        
}
