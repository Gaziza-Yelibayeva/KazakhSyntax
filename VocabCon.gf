concrete VocabCon of VocabAbs = SyntaxCon, cat_ZECon, cat_R_SECon, cat_ETCon, cat_SNCon ** open ResSyntax in {
    lin

        -- EndingPlural
        sg_end = {s= ""; nb = Sg; };
        tar_end = {s= "тар_N1"; nb = Pl; };
        ter_end = {s= "тер_N1"; nb = Pl; };
        dar_end = {s= "дар_N1"; nb = Pl; };
        der_end = {s= "дер_N1"; nb = Pl; };
        lar_end = {s= "лар_N1"; nb = Pl; };
        ler_end = {s= "лер_N1"; nb = Pl; };


        -- EndingPossessive
        nullPoss_end = {s= ""; p = SNull; };
        ym_end = {s= "ым_S1"; p = S1; };
        im_end = {s= "ім_S1"; p = S1; };
        mS_end = {s= "м_S1"; p = S1; };
        -- yn_end = {s= "ың_S2"; p = S2; };
        -- in_end = {s= "ің_S2"; p = S2; };
        -- nS_end = {s= "ң_S2"; p = S2; };
        sy_end = {s= "сы_S3"; p = S3; };
        si_end = {s= "сі_S3"; p = S3; };
        y_end = {s= "ы_S3"; p = S3; }; 
        i_end = {s= "і_S3"; p = S3; };
        -- ynyzS_end = {s= "ыңыз_S4"; p = S4; };
        -- inizS_end = {s= "іңіз_S4"; p = S4; };
        -- nyzS_end = {s= "ңыз_S4"; p = S4; };
        -- nizS_end = {s= "ңіз_S4"; p = S4; };
        -- myzS_end = {s= "мыз_S5"; p = S5; };
        -- mizS_end = {s= "міз_S5"; p = S5; };
        -- ymyz_end = {s= "ымыз_S5"; p = S5; };
        -- imiz_end = {s= "іміз_S5"; p = S5; };


        -- EndingCase
        c1_end = {s= ""; c = C1; };
        nyn_end = {s= "ның_C2"; c = C2; };
        nin_end = {s= "нің_C2"; c = C2; };
        dyn_end = {s= "дың_C2"; c = C2; };
        din_end = {s= "дің_C2"; c = C2; };
        tyn_end = {s= "тың_C2"; c = C2; };
        tin_end = {s= "тің_C2"; c = C2; };
        ga_end = {s= "ға_C3"; c = C3; };
        ge_end = {s= "ге_C3"; c = C3; };
        ke_end = {s= "ке_C3"; c = C3; };
        qa_end = {s= "қа_C3"; c = C3; };
        na_end = {s= "на_C3"; c = C3; };
        ne_end = {s= "не_C3"; c = C3; };
        a_end = {s= "а_C3"; c = C3; };
        e_end = {s= "е_C3"; c = C3; };
        ny_end = {s= "ны_C4"; c = C4; };
        ni_end = {s= "ні_C4"; c = C4;};
        dy_end = {s= "ды_C4"; c = C4; };
        di_end = {s= "ді_C4"; c = C4;};
        ty_end = {s= "ты_C4"; c = C4; };
        ti_end = {s= "ті_C4"; c = C4;};
        nC_end = {s= "н_C4"; c = C4; };
        da_end = {s= "да_C5"; c = C5; };
        de_end = {s= "де_C5"; c = C5; };
        ta_end = {s= "та_C5"; c = C5; };
        te_end = {s= "те_C5"; c = C5; };
        nda_end = {s= "нда_C5"; c = C5; };
        nde_end = {s= "нде_C5"; c = C5; };
        dan_end = {s= "дан_C6"; c = C6; };
        den_end = {s= "ден_C6"; c = C6; };
        nan_end = {s= "нан_C6"; c = C6; };
        nen_end = {s= "нен_C6"; c = C6; };
        tan_end = {s= "тан_C6"; c = C6; };
        ten_end = {s= "тен_C6"; c = C6; };
        men_end = {s= "мен_C7"; c = C7; };
        menen_end = {s= "менен_C7"; c = C7; };
        pen_end = {s= "пен_C7"; c = C7; };
        penen_end = {s= "пенен_C7"; c = C7; };
        ben_end = {s= "бен_C7"; c = C7; };
        benen_end = {s= "бенен_C7"; c = C7; };


        -- EndingPerson for nouns 
        
        mynN_end = {s= "мын_P1"; pr = P1; nb = Sg; };
        minN_end = {s= "мін_P1"; pr = P1; nb = Sg; };
        -- bynN_end = {s= "бын_P1"; pr = P1; nb = Sg; };
        -- binN_end = {s= "бін_P1"; pr = P1; nb = Sg; };
        -- pynN_end = {s= "пын_P1"; pr = P1; nb = Sg; };
        -- pinN_end = {s= "пін_P1"; pr = P1; nb = Sg; };
        --synN_end = {s= "сың_P2"; pr = P2; nb = Sg; };
        --sinN_end = {s= "сің_P2"; pr = P2; nb = Sg; };
        nullSgN_end = {s= ""; pr = P3; nb = Sg;};
        -- syzN_end = {s= "сыз_P4"; pr = P4; nb = Sg; };
        -- sizN_end = {s= "сіз_P4"; pr = P4; nb = Sg; };
        

        --myzPrN_end = {s= "мыз_P5"; pr = P5; nb = Pl; };
        --mizPrN_end = {s= "міз_P5"; pr = P5; nb = Pl; };
        -- byzN_end = {s= "быз_P5"; pr = P5; nb = Pl; };
        -- bizN_end = {s= "біз_P5"; pr = P5; nb = Pl; };
        -- pyzN_end = {s= "пыз_P5"; pr = P5; nb = Pl; };
        -- pizN_end = {s= "піз_P5"; pr = P5; nb = Pl; };
        -- syndarN_end = {s= "сыңдар_P6"; pr = P6; nb = Pl; };
        -- sinderN_end = {s= "сіңдер_P6"; pr = P6; nb = Pl; };
        nullPlN_end = {s= ""; pr = P7; nb = Pl;};
        -- syzdarN_end = {s= "сыздар_P8"; pr = P8; nb = Pl; };
        -- sizderN_end = {s= "сіздер_P8"; pr = P8; nb = Pl; };


        -- EndingPerson for verbs 

        mPr_end = {s= "м_P1"; pr = P1; nb = Sg; };
        --nPr_end = {s= "ң_P2"; pr = P2; nb = Sg; };
        nullSgV_end = {s= ""; pr = P3; nb = Sg;};
        -- nyzPr_end = {s= "ңыз_P4"; pr = P4; nb = Sg; };
        -- nizPr_end = {s= "ңіз_P4"; pr = P4; nb = Sg; };
        
        --k_end = {s= "к_P5"; pr = P5; nb = Pl; };
        --q_end = {s= "қ_P5"; pr = P5; nb = Pl; };
        -- ndar_end = {s= "ңдар_P6"; pr = P6; nb = Pl; };
        -- nder_end = {s= "ңдер_P6"; pr = P6; nb = Pl; };
        nullPlV_end = {s= ""; pr = P7; nb = Pl;};
        -- nzdar_end = {s= "ңыздар_P8"; pr = P8; nb = Pl; };
        -- nzder_end = {s= "ңіздер_P8"; pr = P8; nb = Pl; };


        mynV_end = {s= "мын_P1"; pr = P1; nb = Sg; };
        minV_end = {s= "мін_P1"; pr = P1; nb = Sg; };
        -- bynV_end = {s= "бын_P1"; pr = P1; nb = Sg; };
        -- binV_end = {s= "бін_P1"; pr = P1; nb = Sg; };
        -- pynV_end = {s= "пын_P1"; pr = P1; nb = Sg; };
        -- pinV_end = {s= "пін_P1"; pr = P1; nb = Sg; };
        -- synV_end = {s= "сың_P2"; pr = P2; nb = Sg; };
        -- sinV_end = {s= "сің_P2"; pr = P2; nb = Sg; };
        dyPr_end = {s= "ды_P3"; pr = P3; nb = Sg;};
        diPr_end = {s= "ді_P3"; pr = P3; nb = Sg;};
        tyPr_end = {s= "ты_P3"; pr = P3; nb = Sg;};
        tiPr_end = {s= "ті_P3"; pr = P3; nb = Sg;};
        -- syzV_end = {s= "сыз_P4"; pr = P4; nb = Sg; };
        -- sizV_end = {s= "сіз_P4"; pr = P4; nb = Sg; };
        -- myzPrV_end = {s= "мыз_P5"; pr = P5; nb = Pl; };
        -- mizPrV_end = {s= "міз_P5"; pr = P5; nb = Pl; };
        -- byzV_end = {s= "быз_P5"; pr = P5; nb = Pl; };
        -- bizV_end = {s= "біз_P5"; pr = P5; nb = Pl; };
        -- pyzV_end = {s= "пыз_P5"; pr = P5; nb = Pl; };
        -- pizV_end = {s= "піз_P5"; pr = P5; nb = Pl; };
        -- syndarV_end = {s= "сыңдар_P6"; pr = P6; nb = Pl; };
        -- sinderV_end = {s= "сіңдер_P6"; pr = P6; nb = Pl; };
         dyPrPl_end = {s= "ды_P7"; pr = P7; nb = Pl;};
         diPrPl_end = {s= "ді_P7"; pr = P7; nb = Pl;};
         tyPrPl_end = {s= "ты_P7"; pr = P7; nb = Pl;};
         tiPrPl_end = {s= "ті_P7"; pr = P7; nb = Pl;};
        -- syzdarV_end = {s= "сыздар_P8"; pr = P8; nb = Pl; };
        -- sizderV_end = {s= "сіздер_P8"; pr = P8; nb = Pl; };

        
        -- iyn_end = {s= "йын_P1"; pr = P1; nb = Sg; };
        -- iin_end = {s= "йін_P1"; pr = P1; nb = Sg; };
        -- aiyn_end = {s= "айын_P1"; pr = P1; nb = Sg; };
        -- eiin_end = {s= "ейін_P1"; pr = P1; nb = Sg; };
        -- nullP2Sg_end = {s= ""; pr = P2; nb = Sg;};
        -- ynyzPr_end = {s= "ыңыз_P4"; pr = P4; nb = Sg; };
        -- inizPr_end = {s= "іңіз_P4"; pr = P4; nb = Sg; };
        -- cyn_end = {s= "сын_P3"; pr = P3; nb = Sg; };
        -- cin_end = {s= "сін_P3"; pr = P3; nb = Sg; };
        -- iyk_end = {s= "йық_P5"; pr = P5; nb = Pl; };
        -- iik_end = {s= "йік_P5"; pr = P5; nb = Pl; };
        -- aiyk_end = {s= "айық_P5"; pr = P5; nb = Pl; };
        -- eiik_end = {s= "ейік_P5"; pr = P5; nb = Pl; };
        -- yndar_end = {s= "ыңдар_P6"; pr = P6; nb = Pl; };
        -- inder_end = {s= "іңдер_P6"; pr = P6; nb = Pl; };
        -- ynzdar_end = {s= "ыңыздар_P8"; pr = P8; nb = Pl; };
        -- inzder_end = {s= "іңіздер_P8"; pr = P8; nb = Pl; };
        -- cynPl_end = {s= "сын_P7"; pr = P7; nb = Pl;};
        -- cinPl_end = {s= "сін_P7"; pr = P7; nb = Pl;};

          
       
         --Adjective suffixes
        siz_suf = {s="сіз_ABE"};
        

        -- Tense Suffix        
        di_suf = {s= "ді_T3"; t = Past; };
        dy_suf = {s= " ды_T3"; t = Past; };
        ti_suf = {s= "ті_T3"; t = Past; };
        ty_suf = {s= "ты_T3"; t = Past; };
        e_suf = {s="е_T1";t = Aorist; };
        i_suf = {s="й_T1"; t= Aorist; };
        
        -- Voice Suffix
        zero_suf = {s= ""; vc = VoiceNull;};
        n_suf = {s= "н_V1"; vc = Refl; };


        --Verbal Adjective Suffix
        gen_suf_vadj = {s= "ген_ET_ESM"; };
        gan_suf_vadj = {s= "ған_ET_ESM"; };


     
        
        --Verb
        --ki_stem1 = {s= "ки_R_ET"; vv = SV1; vvc = table {PA1 => C4; PA2 => C0}}; -- пәлтені киді

       -- kir_stem0 = {s= "кір_R_ET"; vv = SV0; vvc = table {PA1 => C0; PA2 => C0}  }; -- intransitive үйге кірді
        kir_stem1 = {s= "кір_R_ET"; vv = SV1; vvc = table {PA1 => C3; PA2 => C0}  }; -- intransitive үйге кірді
        --kir_stem2 = {s= "кір_R_ET"; vv = SV1; vvc = table {PA1 => C6; PA2 => C0}  }; -- даладан кірді
        --kir_stem3 = {s= "кір_R_ET"; vv = SV2; vvc = table {PA1 => C3; PA2 => C6}  }; -- this verb can take also C3 and C6 together f.e. үйге даладан кірді/ даладан үйге кірді
       
        jaz_stem1 = {s= "жаз_R_ET"; vv = SV1; vvc = table {PA1 => C4; PA2 => C0}}; -- шығарманы жазды
        jaz_stem2 = {s= "жаз_R_ET"; vv = SV2; vvc = table {PA1 => C4; PA2 => C3}}; -- шығарманы қағазға жазды

        jariyala_stem1 = {s= "жарияла_R_ET"; vv = SV1; vvc = table {PA1 => C4; PA2 => C0} }; -- шығарманы жариялады
        jariyala_stem2 = {s= "жарияла_R_ET"; vv = SV1; vvc = table {PA1 => C5; PA2 => C0} }; -- газетте жариялады/газетте жарияланды
        jariyala_stem3 = {s= "жарияла_R_ET"; vv = SV2; vvc = table {PA1 => C4; PA2 => C5} }; -- шығарманы газетте жариялады

        ber_stem1 = {s= "бер_R_ET"; vv = SV1; vvc = table {PA1 => C4; PA2 => C0}  }; -- кітапты берді
        ber_stem2 = {s= "бер_R_ET"; vv = SV2; vvc = table {PA1 => C4; PA2 => C3}  }; -- кітапты оқушыға берді
        
        kel_stem1 = {s= "кел_R_ET"; vv = SV1; vvc = table {PA1 => C3; PA2 => C0}  }; -- балабақшаға келді;
        kel_stem2 = {s= "кел_R_ET"; vv = SV1; vvc = table {PA1 => C6; PA2 => C0}  }; -- балабақшадан келді;
        kel_stem3 = {s= "кел_R_ET"; vv = SV2; vvc = table {PA1 => C3; PA2 => C6}  }; -- жұмысқа балабақшадан келді/балабақшадан жұмысқа келді
        kel_stem4 = {s= "кел_R_ET"; vv = SV2; vvc = table {PA1 => C3; PA2 => C7}  };  -- балабақшадан көлікпен келді
        --kel_stem5 = {s= "кел_R_ET"; vv = SV3; vvc = table {PA1 => C6; PA2 => C3} }; -- SV3 балабақшадан жұмысқа көлікпен келді

        tamashala_stem1 = {s="тамашала_R_ET";  vv=SV1; vvc = table {PA1 => C4; PA2 => C0} };

        tus_stem1 = {s= "түс_R_ET"; vv = SV1; vvc = table {PA1 => C3; PA2 => C0} };   -- жерге түсті intransitive
        tus_stem2 = {s= "түс_R_ET"; vv = SV1; vvc = table {PA1 => C6; PA2 => C0} };   -- аспаннан түсті
        tus_stem3 = {s= "түс_R_ET"; vv = SV2; vvc = table {PA1 => C3; PA2 => C6} };   -- жерге аспаннан түсті/аспаннан жерге түсті
        tus_stem4 = {s= "түс_R_ET"; vv = SV2; vvc = table {PA1 => C3; PA2 => C7} };   -- жерге жіппен түсті
        --tus_stem5 = {s= "түс_R_ET"; vv = SV3; vvc = table {PA1 => C6; PA2 => C3} }; -- SV3 аспаннан жерге жіппен түсті
        
        bas_stem1 = {s= "бас_R_ET"; vv = SV1; vvc = table {PA1 => C4; PA2 => C0} };    -- жерді басты    


        --Pronoun
        men_Pron = {s= "мен_R_SIM"; nb = Sg; c = C1; p = SNull; pr= P1;};
        --biz_Pron = {s= "біз_R_SIM"; nb = Pl; c = C1; p = SNull; pr= P5};
        --sen_Pron = {s= "сен_R_SIM"; nb = Sg; c = C1; p = SNull; pr= P2;};
        --sender_Pron = {s= "сендер_R_SIM"; nb = Pl; c = C1; p = SNull; pr= P6;};
        ol_Pron = {s= "ол_R_SIM"; nb = Sg; c = C1; p = SNull; pr= P3;};


        


}
