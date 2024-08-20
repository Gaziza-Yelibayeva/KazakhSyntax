abstract VocabAbs = SyntaxAbs, cat_ZEAbs, cat_R_SEAbs, cat_ETAbs, cat_SNAbs ** { 
    fun
         -- EndingPlural
        sg_end, tar_end, ter_end, dar_end, der_end, lar_end, ler_end: ENumber;


         -- EndingPossessive
        nullPoss_end, ym_end,im_end, mS_end, 
        -- yn_end, in_end, nS_end, 
        sy_end, si_end, y_end, i_end : EPossessive;
        -- ynyzS_end, inizS_end, nyzS_end, nizS_end, myzS_end, mizS_end, ymyz_end, imiz_end


         -- EndingCase
        c1_end, nyn_end, nin_end, dyn_end, din_end, tyn_end, tin_end, ga_end, ge_end, ke_end, qa_end, na_end, ne_end, a_end, e_end, ny_end, ni_end, dy_end, di_end, ty_end, nC_end, ti_end, da_end, de_end, ta_end, te_end, nda_end, nde_end, dan_end, den_end, nan_end, nen_end, tan_end, ten_end, men_end, menen_end, pen_end,  penen_end, ben_end, benen_end: ECase;

        -- EndingPerson for nouns      
        mynN_end, minN_end,
        -- bynN_end, binN_end, pynN_end, pinN_end,
        -- synN_end, sinN_end,
        nullSgN_end,
        -- syzN_end, sizN_end,
        -- myzPrN_end, mizPrN_end,
        -- byzN_end, bizN_end, pyzN_end, pizN_end,
        -- syndarN_end, sinderN_end,
        nullPlN_end
        -- syzdarN_end, sizderN_end,
        : EPersonN;

        -- EndingPerson for verbs
        mPr_end,
        -- nPr_end,
        nullSgV_end,
        -- nyzPr_end, nizPr_end,
        -- k_end, q_end,
        -- ndar_end, nder_end,
        nullPlV_end
        -- nzdar_end, nzder_end,
        : EPersonV;


        mynV_end, minV_end,
        -- bynV_end, binV_end, pynV_end, pinV_end
        -- synV_end, sinV_end,
         dyPr_end, diPr_end, tyPr_end, tiPr_end,
        -- syzV_end, sizV_end,
        -- myzPrV_end, mizPrV_end, byzV_end, bizV_end, pyzV_end, pizV_end,
        -- syndarV_end, sinderV_end,
         dyPrPl_end,  diPrPl_end, tyPrPl_end, tiPrPl_end
        -- syzdarV_end, sizderV_end,
        
        -- iyn_end, iin_end, aiyn_end, eiin_end,
        -- nullP2Sg_end,
        -- ynyzPr_end, inizPr_end, 
        -- cyn_end, cin_end,
        -- iyk_end, iik_end, aiyk_end, eiik_end, 
        -- yndar_end, inder_end,
        -- ynzdar_end, inzder_end
        -- cynPl_end, cinPl_end,
        : EPersonV;

           


        --Adjective suffixes
        siz_suf:ABE;

        -- Tense Suffix        
        di_suf, dy_suf, ti_suf, ty_suf, e_suf, i_suf: Tense;

        --Voice Suffix
        zero_suf, n_suf: Voice;


        --Verbal Adjective Suffix
        gen_suf_vadj: VAdjSuffix;
        gan_suf_vadj: VAdjSuffix;


              
        --Verb
         --ki_stem1: VStem;
         --kir_stem0,
         kir_stem1,
         --kir_stem2, kir_stem3: VStem;
         jaz_stem1, jaz_stem2: VStem;
         jariyala_stem1, jariyala_stem2, jariyala_stem3: VStem;
         ber_stem1, ber_stem2: VStem;
         kel_stem1, kel_stem2, kel_stem3, kel_stem4: VStem;
         tamashala_stem1,
         tus_stem1, tus_stem2, tus_stem3, tus_stem4: VStem;
         bas_stem1: VStem;

        --Pronoun
        men_Pron,
        --biz_Pron, sen_Pron,
        ol_Pron: Pron;
        --sender_Pron
              
     

} 
