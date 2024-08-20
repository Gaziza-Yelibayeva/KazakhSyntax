abstract SyntaxAbs = {
  
      flags startcat = S ;
  
      cat
        -- Inner nodes of syntax trees, corresponding to real non-terminals of the grammar
        S;     -- sentences
        NP;    -- noun phrases (with person endings)
        
        N;     -- nouns (with person endings)
        Nominal; -- nouns modified by adjectives but not by relative clauses, to avoid ambiguities
        
        VP;    -- verb phrases
        V;     -- verbs
        RC;    -- relative clauses
        VAdj;  -- verbal adjectives
        
        -- Tokens produced by morphlogical analysis
        NStem;             --   in Kaznlp: R_ZE
        VStem;             --   in Kaznlp: R_ET              
        VAdjSuffix;        --   in Kaznlp: ET_ESM

        ENumber;      --   in Kaznlp: N1
        EPossessive;  --   in Kaznlp: S1 .. S5
        ECase;        --   in Kaznlp: C2 .. C7 
        EPersonN;      --   in Kaznlp: P1 .. P8   !!! TODO: to be checked
        EPersonV;      --   in Kaznlp: P1 .. P8   !!! TODO: to be checked

        Pron;              --   in Kaznlp: R_SIM     
        Tense;             --   in Kaznlp: T1 .. T3
        Voice;             --   in Kaznlp: V1 .. V4
        Adj;               --   in Kaznlp: R_SE
        Num;               --   in Kaznlp: R_SN
        ABE;               --   in Kaznlp: ABE

        -- currently not used:
        -- R_ZEQ Noun, personal (жалқы есім)
        -- R_ETK Verb, auxiliary (көмекші етістік)
        -- R_ETP Verb, special action* (арнайы етістік жатыр, отыр, тұр, жүр)
        -- R_ETPK Verb, special action, auxiliary (арнайы көмекші етістік жатыр, отыр, тұр, жүр)
        -- R_ETB Verb, negative (жоқ, емес only, e.g. барған жоқ)
        -- R_US	Adverb (үстеу)
        -- R_ZHL Conjunct (both coordinating and subordinating) - (салалас және сабаұтас жалғаулық шылаулар)
        -- R_SH	Adposition / Particle (шылау, бөлшек)
        -- R_MOD Modal word (модаль сөз)
        -- R_OS	Interjection (оқшау сөз)
        -- R_ELK Imitative (еліктеуіш)
        -- R_SYM Symbol (#, $, +, etc.)
        -- R_BOS Foreign word (бөтен / шетелдік сөз)
        -- R_X Un-analyzed (талданбаған)
        -- N1S plural, after possessive, e.g. мама_R_ZE м_S1 дар_N1S
        -- S9 possessive, special (-ныкі, -дыкі, -тыкі)
        -- S3SIM possessive, third singular/plural, after pronouns
        -- LATT	locative-attributive (-дағы, -дегі, -тағы, -тегі)
        -- SML similative (-дай, -дей, -тай, -тей)
        -- ABE abessive (-сыз, -сіз)
        -- EQU equative (-ша, -ше, e.g. балаша)
        -- CMP comparative, (adjectives and adverbs)
        -- M2 imperative mood (бұйрық рай)
        -- M3 desiderative mood (қалау рай)
        -- M4 conditional mood (шартты рай)
        -- T3E past tense, modified after е_R_ET (e.g., е_R_ET т_T3E)
        -- ET_KSE verbal adverb, participle (көсемше)
        -- ET_ETU gerund (тұйық етістік)
        -- ET_ETB negated verb (болымсыз етістік)



     fun
        -- Rules

        -- sentences with a definite verb (not "is")
        NPVPToS: NP -> VP -> S;
        -- sentences of the form "A is a B"
        NPNPToS: NP -> NP -> S;
        VPwithObj: NP -> V -> VP;
        VPwith2Obj: NP -> NP -> V -> VP;
        
        RCNPToNP: RC -> NP -> NP;
        NPNPToNP:  NP -> NP -> NP;
        NPVAdjToRC: NP -> VAdj -> RC;
        VAdjToRC: VAdj -> RC;
        NToNominal:  N -> Nominal;
        NominalToNP: Nominal -> NP;
       
        PronToNP: Pron -> NP;
        VAdjPlupT: VStem -> VAdjSuffix -> VAdj;
      
        NounDecompos:
           NStem -> ENumber -> EPossessive -> ECase -> EPersonN -> N;
        
        VToVP: V ->VP;
        VerbDecompos: VStem -> Voice -> Tense -> EPersonV -> V;
        AdjNominalToNominal: Adj -> Nominal -> Nominal;
        AdjDer: N-> ABE -> Adj; 
        
        NumNominalToNominal: Num -> Nominal -> Nominal;
       
}
