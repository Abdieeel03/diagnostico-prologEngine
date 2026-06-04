:- module(sintomas, [
  sintoma/2
]).

sintoma(gripe, fiebre).
sintoma(gripe, tos).
sintoma(gripe, dolor_cabeza).
sintoma(gripe, dolor_garganta).
sintoma(gripe, dolor_muscular).
sintoma(gripe, cansancio).
sintoma(gripe, congestion_nasal).
sintoma(gripe, escalofrios).
sintoma(gripe, estornudos).

sintoma(covid, fiebre).
sintoma(covid, tos).
sintoma(covid, perdida_olfato).
sintoma(covid, cansancio).
sintoma(covid, perdida_gusto).
sintoma(covid, dificultad_respiratoria).
sintoma(covid, dolor_cuerpo).
sintoma(covid, dolor_garganta).
sintoma(covid, congestion_nasal).
sintoma(covid, nauseas).

sintoma(acne, puntos_negros).
sintoma(acne, puntos_blancos).
sintoma(acne, papulas).
sintoma(acne, pustulas).
sintoma(acne, nodulos).
sintoma(acne, quistes).
sintoma(acne, inflamacion).
sintoma(acne, enrojecimiento).
sintoma(acne, cicatrices).
sintoma(acne, sensibilidad).

sintoma(dermatitis_atopica, prurito).
sintoma(dermatitis_atopica, piel_seca).
sintoma(dermatitis_atopica, manchas_rojas).
sintoma(dermatitis_atopica, exudado).
sintoma(dermatitis_atopica, costras).
sintoma(dermatitis_atopica, piel_engrosada).
sintoma(dermatitis_atopica, grietas_piel).
sintoma(dermatitis_atopica, inflamacion).
sintoma(dermatitis_atopica, sensibilidad).
sintoma(dermatitis_atopica, oscurecimiento_piel).

sintoma(dermatitis_de_contacto, erupcion_localizada).
sintoma(dermatitis_de_contacto, prurito).
sintoma(dermatitis_de_contacto, quemazon).
sintoma(dermatitis_de_contacto, ampollas).
sintoma(dermatitis_de_contacto, inflamacion).
sintoma(dermatitis_de_contacto, piel_agrietada).
sintoma(dermatitis_de_contacto, sensibilidad).
sintoma(dermatitis_de_contacto, descamacion).
sintoma(dermatitis_de_contacto, enrojecimiento).
sintoma(dermatitis_de_contacto, calor_local).

sintoma(urticaria, habones).
sintoma(urticaria, ronchas).
sintoma(urticaria, picazon_severa).
sintoma(urticaria, angioedema).
sintoma(urticaria, cambio_forma).
sintoma(urticaria, migracion_lesiones).
sintoma(urticaria, quemazon).
sintoma(urticaria, blanqueamiento_presion).
sintoma(urticaria, empeoramiento_calor).
sintoma(urticaria, fiebre_leve).

sintoma(psoriasis, placas_rojas).
sintoma(psoriasis, escamas_plateadas).
sintoma(psoriasis, piel_seca).
sintoma(psoriasis, prurito).
sintoma(psoriasis, dolor_articular).
sintoma(psoriasis, uñas_engrosadas).
sintoma(psoriasis, rigidez_articular).
sintoma(psoriasis, puntos_escamosos).
sintoma(psoriasis, inflamacion_generalizada).
sintoma(psoriasis, pustulas).

sintoma(varicela, fiebre).
sintoma(varicela, dolor_cabeza).
sintoma(varicela, cansancio).
sintoma(varicela, perdida_apetito).
sintoma(varicela, ampollas).
sintoma(varicela, prurito).
sintoma(varicela, erupcion_cutanea).
sintoma(varicela, papulas).
sintoma(varicela, costras).

sintoma(herpes_labial, hormigueo).
sintoma(herpes_labial, prurito).
sintoma(herpes_labial, ampollas_labios).
sintoma(herpes_labial, costras).
sintoma(herpes_labial, fiebre).
sintoma(herpes_labial, quemazon).
sintoma(herpes_labial, supuracion).
sintoma(herpes_labial, ganglios_inflamados).
sintoma(herpes_labial, dolor_garganta).
sintoma(herpes_labial, enrojecimiento).

sintoma(herpes_zoster, dolor_quemante).
sintoma(herpes_zoster, hormigueo).
sintoma(herpes_zoster, sarpullido_rojo).
sintoma(herpes_zoster, ampollas).
sintoma(herpes_zoster, fiebre).
sintoma(herpes_zoster, costras_secas).
sintoma(herpes_zoster, picazon_intensa).
sintoma(herpes_zoster, sensibilidad_tacto).
sintoma(herpes_zoster, dolor_cabeza).
sintoma(herpes_zoster, cansancio).

sintoma(tina, erupcion_anillo).
sintoma(tina, bordes_elevados).
sintoma(tina, prurito).
sintoma(tina, descamacion).
sintoma(tina, perdida_cabello).
sintoma(tina, piel_agrietada).
sintoma(tina, enrojecimiento).
sintoma(tina, ampollas).
sintoma(tina, puntos_negros_cuero_cabelludo).
sintoma(tina, mal_olor).

sintoma(impetigo, llagas_rojas).
sintoma(impetigo, ampollas).
sintoma(impetigo, costras_miel).
sintoma(impetigo, prurito).
sintoma(impetigo, exudado_amarillento).
sintoma(impetigo, dolor_leve).
sintoma(impetigo, ganglios_inflamados).
sintoma(impetigo, ectima).
sintoma(impetigo, piel_brillante).
sintoma(impetigo, propagacion_rapida).

sintoma(dengue, fiebre_alta).
sintoma(dengue, dolor_articular).
sintoma(dengue, dolor_muscular).
sintoma(dengue, dolor_retroocular).
sintoma(dengue, manchas_rojas).
sintoma(dengue, nauseas).
sintoma(dengue, vomitos).
sintoma(dengue, dolor_cabeza).
sintoma(dengue, cansancio_extremo).
sintoma(dengue, ganglios_inflamados).

sintoma(zika, fiebre_leve).
sintoma(zika, conjuntivitis).
sintoma(zika, erupcion_pruriginosa).
sintoma(zika, dolor_articular).
sintoma(zika, inflamacion).
sintoma(zika, dolor_muscular).
sintoma(zika, dolor_cabeza).
sintoma(zika, malestar_general).
sintoma(zika, dolor_retroocular).
sintoma(zika, vomitos).

sintoma(chikungunya, fiebre_muy_alta).
sintoma(chikungunya, dolor_articular_intenso).
sintoma(chikungunya, dolor_muscular).
sintoma(chikungunya, manchas_rojas).
sintoma(chikungunya, inflamacion_articulaciones).
sintoma(chikungunya, dolor_espalda).
sintoma(chikungunya, fatiga_cronica).
sintoma(chikungunya, nauseas).
sintoma(chikungunya, dolor_cabeza).
sintoma(chikungunya, conjuntivitis).

sintoma(mononucleosis_infecciosa, fatiga_extrema).
sintoma(mononucleosis_infecciosa, fiebre).
sintoma(mononucleosis_infecciosa, dolor_garganta).
sintoma(mononucleosis_infecciosa, ganglios_inflamados).
sintoma(mononucleosis_infecciosa, esplenomegalia).
sintoma(mononucleosis_infecciosa, dolor_cabeza).
sintoma(mononucleosis_infecciosa, perdida_apetito).
sintoma(mononucleosis_infecciosa, inflamacion_higado).
sintoma(mononucleosis_infecciosa, erupcion_cutanea).
sintoma(mononucleosis_infecciosa, inflamacion_amigdalas).

sintoma(tuberculosis, tos_persistente).
sintoma(tuberculosis, tos_sangre).
sintoma(tuberculosis, dolor_pecho).
sintoma(tuberculosis, cansancio).
sintoma(tuberculosis, perdida_peso).
sintoma(tuberculosis, fiebre).
sintoma(tuberculosis, sudoraciones_nocturnas).
sintoma(tuberculosis, falta_apetito).
sintoma(tuberculosis, escalofrios).
sintoma(tuberculosis, malestar_general).

sintoma(hepatitis_a, ictericia).
sintoma(hepatitis_a, orina_oscura).
sintoma(hepatitis_a, heces_claras).
sintoma(hepatitis_a, nauseas).
sintoma(hepatitis_a, vomitos).
sintoma(hepatitis_a, dolor_abdominal).
sintoma(hepatitis_a, cansancio).
sintoma(hepatitis_a, fiebre_leve).
sintoma(hepatitis_a, picazon_piel).
sintoma(hepatitis_a, perdida_apetito).

sintoma(hepatitis_b, cansancio).
sintoma(hepatitis_b, dolor_articular).
sintoma(hepatitis_b, ictericia).
sintoma(hepatitis_b, orina_oscura).
sintoma(hepatitis_b, heces_claras).
sintoma(hepatitis_b, nauseas).
sintoma(hepatitis_b, vomitos).
sintoma(hepatitis_b, dolor_abdominal).
sintoma(hepatitis_b, fiebre).

sintoma(sarampion, fiebre_alta).
sintoma(sarampion, conjuntivitis).
sintoma(sarampion, coriza).
sintoma(sarampion, tos_seca).
sintoma(sarampion, manchas_koplik).
sintoma(sarampion, erupcion_cutanea).
sintoma(sarampion, dolor_garganta).
sintoma(sarampion, estornudos).
sintoma(sarampion, sensibilidad_luz).
sintoma(sarampion, malestar_general).

sintoma(rubeola, fiebre_leve).
sintoma(rubeola, ganglios_inflamados).
sintoma(rubeola, sarpullido_rosado).
sintoma(rubeola, dolor_cabeza).
sintoma(rubeola, ojos_rojos).
sintoma(rubeola, dolor_articular).
sintoma(rubeola, congestion_nasal).
sintoma(rubeola, perdida_apetito).
sintoma(rubeola, malestar_general).
sintoma(rubeola, estornudos).

sintoma(paperas, inflamacion_parotidas).
sintoma(paperas, dolor_masticar).
sintoma(paperas, fiebre).
sintoma(paperas, dolor_cabeza).
sintoma(paperas, dolor_muscular).
sintoma(paperas, cansancio).
sintoma(paperas, perdida_apetito).
sintoma(paperas, hinchazon_testicular).
sintoma(paperas, dolor_tragar).

sintoma(hipertension_arterial, dolor_cabeza).
sintoma(hipertension_arterial, mareos).
sintoma(hipertension_arterial, vision_borrosa).
sintoma(hipertension_arterial, zumbido_oidos).
sintoma(hipertension_arterial, palpitaciones).
sintoma(hipertension_arterial, fatiga).
sintoma(hipertension_arterial, dificultad_respiratoria).
sintoma(hipertension_arterial, sangrado_nasal).

sintoma(hipotension_arterial, mareos).
sintoma(hipotension_arterial, desmayos).
sintoma(hipotension_arterial, vision_borrosa).
sintoma(hipotension_arterial, nauseas).
sintoma(hipotension_arterial, cansancio).
sintoma(hipotension_arterial, confusion).
sintoma(hipotension_arterial, palpitaciones).
sintoma(hipotension_arterial, frio_extremidades).

sintoma(diabetes_tipo_1, poliuria).
sintoma(diabetes_tipo_1, polidipsia).
sintoma(diabetes_tipo_1, perdida_peso).
sintoma(diabetes_tipo_1, vision_borrosa).
sintoma(diabetes_tipo_1, cansancio).
sintoma(diabetes_tipo_1, hambre_extrema).
sintoma(diabetes_tipo_1, irritabilidad).
sintoma(diabetes_tipo_1, infecciones_frecuentes).

sintoma(diabetes_tipo_2, poliuria).
sintoma(diabetes_tipo_2, polidipsia).
sintoma(diabetes_tipo_2, vision_borrosa).
sintoma(diabetes_tipo_2, cansancio).
sintoma(diabetes_tipo_2, heridas_lenta_cicatrizacion).
sintoma(diabetes_tipo_2, hormigueo_extremidades).
sintoma(diabetes_tipo_2, infecciones_frecuentes).
sintoma(diabetes_tipo_2, perdida_peso).

sintoma(hipotiroidismo, cansancio).
sintoma(hipotiroidismo, aumento_peso).
sintoma(hipotiroidismo, intolerancia_frio).
sintoma(hipotiroidismo, piel_seca).
sintoma(hipotiroidismo, cabello_fragil).
sintoma(hipotiroidismo, estrenimiento).
sintoma(hipotiroidismo, depresion).
sintoma(hipotiroidismo, voz_ronca).

sintoma(hipertiroidismo, perdida_peso).
sintoma(hipertiroidismo, palpitaciones).
sintoma(hipertiroidismo, nerviosismo).
sintoma(hipertiroidismo, intolerancia_calor).
sintoma(hipertiroidismo, temblores).
sintoma(hipertiroidismo, sudoracion_excesiva).
sintoma(hipertiroidismo, ojos_prominentes).
sintoma(hipertiroidismo, diarrea).

sintoma(anemia_ferropenica, cansancio).
sintoma(anemia_ferropenica, palidez).
sintoma(anemia_ferropenica, dificultad_respiratoria).
sintoma(anemia_ferropenica, dolor_cabeza).
sintoma(anemia_ferropenica, palpitaciones).
sintoma(anemia_ferropenica, unas_quebradizas).
sintoma(anemia_ferropenica, mareos).
sintoma(anemia_ferropenica, frio_extremidades).

sintoma(obesidad, dificultad_respiratoria).
sintoma(obesidad, dolor_articular).
sintoma(obesidad, cansancio).
sintoma(obesidad, sudoracion_excesiva).
sintoma(obesidad, apnea_sueno).
sintoma(obesidad, reflujo_gastrico).
sintoma(obesidad, ronquidos).
sintoma(obesidad, inflamacion_articulaciones).

sintoma(hipercolesterolemia, xantomas).
sintoma(hipercolesterolemia, xantelasmas).
sintoma(hipercolesterolemia, arco_corneal).
sintoma(hipercolesterolemia, dolor_pecho).
sintoma(hipercolesterolemia, fatiga).
sintoma(hipercolesterolemia, angina).
sintoma(hipercolesterolemia, calambres_piernas).
sintoma(hipercolesterolemia, mareos).

sintoma(sindrome_metabolico, obesidad_abdominal).
sintoma(sindrome_metabolico, presion_arterial_alta).
sintoma(sindrome_metabolico, azucar_elevada).
sintoma(sindrome_metabolico, trigliceridos_altos).
sintoma(sindrome_metabolico, cansancio).
sintoma(sindrome_metabolico, dolor_cabeza).
sintoma(sindrome_metabolico, mareos).
sintoma(sindrome_metabolico, vision_borrosa).

sintoma(migrana, dolor_cabeza_intenso).
sintoma(migrana, nauseas).
sintoma(migrana, vomitos).
sintoma(migrana, sensibilidad_luz).
sintoma(migrana, sensibilidad_sonido).
sintoma(migrana, vision_borrosa).
sintoma(migrana, aura_visual).
sintoma(migrana, hormigueo_facial).

sintoma(cefalea_tensional, dolor_cabeza_opresivo).
sintoma(cefalea_tensional, sensibilidad_cuero_cabelludo).
sintoma(cefalea_tensional, tension_cervical).
sintoma(cefalea_tensional, tension_hombros).
sintoma(cefalea_tensional, irritabilidad).
sintoma(cefalea_tensional, dificultad_concentracion).
sintoma(cefalea_tensional, fatiga).
sintoma(cefalea_tensional, sensibilidad_luz).

sintoma(epilepsia, convulsiones).
sintoma(epilepsia, perdida_consciencia).
sintoma(epilepsia, confusion_postictal).
sintoma(epilepsia, movimientos_involuntarios).
sintoma(epilepsia, mirada_fija).
sintoma(epilepsia, rigidez_muscular).
sintoma(epilepsia, ausencias).
sintoma(epilepsia, mordedura_lengua).

sintoma(fibromialgia, dolor_muscular_generalizado).
sintoma(fibromialgia, fatiga_cronica).
sintoma(fibromialgia, insomnio).
sintoma(fibromialgia, puntos_sensibles).
sintoma(fibromialgia, rigidez_matutina).
sintoma(fibromialgia, dificultad_concentracion).
sintoma(fibromialgia, dolor_cabeza).
sintoma(fibromialgia, sensibilidad_tacto).

sintoma(artritis_reumatoide, dolor_articular).
sintoma(artritis_reumatoide, inflamacion_articulaciones).
sintoma(artritis_reumatoide, rigidez_matutina).
sintoma(artritis_reumatoide, cansancio).
sintoma(artritis_reumatoide, fiebre_leve).
sintoma(artritis_reumatoide, perdida_apetito).
sintoma(artritis_reumatoide, deformacion_articular).
sintoma(artritis_reumatoide, nodos_reumatoides).

sintoma(infeccion_urinaria, ardor_miccion).
sintoma(infeccion_urinaria, frecuencia_urinaria).
sintoma(infeccion_urinaria, orina_turbia).
sintoma(infeccion_urinaria, orina_con_sangre).
sintoma(infeccion_urinaria, dolor_pelvis).
sintoma(infeccion_urinaria, orina_olor_fuerte).
sintoma(infeccion_urinaria, urgencia_urinaria).
sintoma(infeccion_urinaria, fiebre_leve).

sintoma(calculos_renales, dolor_lumbar_intenso).
sintoma(calculos_renales, dolor_irradiado).
sintoma(calculos_renales, orina_con_sangre).
sintoma(calculos_renales, nauseas).
sintoma(calculos_renales, vomitos).
sintoma(calculos_renales, frecuencia_urinaria).
sintoma(calculos_renales, ardor_miccion).
sintoma(calculos_renales, fiebre).

sintoma(conjuntivitis, ojos_rojos).
sintoma(conjuntivitis, secrecion_ocular).
sintoma(conjuntivitis, picazon_ocular).
sintoma(conjuntivitis, lagrimeo).
sintoma(conjuntivitis, sensibilidad_luz).
sintoma(conjuntivitis, vision_borrosa).
sintoma(conjuntivitis, ardor_ocular).
sintoma(conjuntivitis, costras_parpados).

sintoma(otitis_media, dolor_oido).
sintoma(otitis_media, fiebre).
sintoma(otitis_media, perdida_audicion).
sintoma(otitis_media, zumbido_oido).
sintoma(otitis_media, supuracion_oido).
sintoma(otitis_media, presion_oido).
sintoma(otitis_media, irritabilidad).
sintoma(otitis_media, dificultad_audicion).

sintoma(otitis_externa, dolor_oido).
sintoma(otitis_externa, picazon_canal_auditivo).
sintoma(otitis_externa, enrojecimiento_canal).
sintoma(otitis_externa, supuracion_oido).
sintoma(otitis_externa, perdida_audicion).
sintoma(otitis_externa, sensibilidad_trago).
sintoma(otitis_externa, inflamacion_canal).
sintoma(otitis_externa, olor_oido).
