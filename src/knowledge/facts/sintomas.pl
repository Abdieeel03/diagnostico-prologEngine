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
