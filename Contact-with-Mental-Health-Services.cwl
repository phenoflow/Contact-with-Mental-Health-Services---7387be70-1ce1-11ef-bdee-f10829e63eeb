cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  contact-with-mental-health-services-psychology---primary:
    run: contact-with-mental-health-services-psychology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  contact-with-mental-health-services-listed---primary:
    run: contact-with-mental-health-services-listed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-psychology---primary/output
  nonurgent-contact-with-mental-health-services---primary:
    run: nonurgent-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-listed---primary/output
  contact-with-mental-health-services-counselling---primary:
    run: contact-with-mental-health-services-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: nonurgent-contact-with-mental-health-services---primary/output
  vpsychiatric-contact-with-mental-health-services---primary:
    run: vpsychiatric-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-counselling---primary/output
  other-contact-with-mental-health-services---primary:
    run: other-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: vpsychiatric-contact-with-mental-health-services---primary/output
  clinical-contact-with-mental-health-services---primary:
    run: clinical-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-contact-with-mental-health-services---primary/output
  psychoanalytic-contact-with-mental-health-services---primary:
    run: psychoanalytic-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: clinical-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-monitoring---primary:
    run: contact-with-mental-health-services-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: psychoanalytic-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-refer---primary:
    run: contact-with-mental-health-services-refer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-monitoring---primary/output
  elderly-contact-with-mental-health-services---primary:
    run: elderly-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-refer---primary/output
  contact-with-mental-health-services-followup---primary:
    run: contact-with-mental-health-services-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: elderly-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-contingency---primary:
    run: contact-with-mental-health-services-contingency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-followup---primary/output
  contact-with-mental-health-services-psychogeriatrician---primary:
    run: contact-with-mental-health-services-psychogeriatrician---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-contingency---primary/output
  contact-with-mental-health-services-triage---primary:
    run: contact-with-mental-health-services-triage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-psychogeriatrician---primary/output
  contact-with-mental-health-services-discharged---primary:
    run: contact-with-mental-health-services-discharged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-triage---primary/output
  contact-with-mental-health-services-appointment---primary:
    run: contact-with-mental-health-services-appointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-discharged---primary/output
  contact-with-mental-health-services---primary:
    run: contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-appointment---primary/output
  contact-with-mental-health-services-admit---primary:
    run: contact-with-mental-health-services-admit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-crisis---primary:
    run: contact-with-mental-health-services-crisis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-admit---primary/output
  contact-with-mental-health-services-counsellor---primary:
    run: contact-with-mental-health-services-counsellor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-crisis---primary/output
  hospital-contact-with-mental-health-services---primary:
    run: hospital-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-counsellor---primary/output
  contact-with-mental-health-services-psychol---primary:
    run: contact-with-mental-health-services-psychol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: hospital-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-psychosis---primary:
    run: contact-with-mental-health-services-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-psychol---primary/output
  behavioural-contact-with-mental-health-services---primary:
    run: behavioural-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-psychosis---primary/output
  systemic-contact-with-mental-health-services---primary:
    run: systemic-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: behavioural-contact-with-mental-health-services---primary/output
  psychoeducational-contact-with-mental-health-services---primary:
    run: psychoeducational-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: systemic-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-vpsych---primary:
    run: contact-with-mental-health-services-vpsych---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: psychoeducational-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-gateway---primary:
    run: contact-with-mental-health-services-gateway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-vpsych---primary/output
  contact-with-mental-health-services-provider---primary:
    run: contact-with-mental-health-services-provider---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-gateway---primary/output
  contact-with-mental-health-services-approach---primary:
    run: contact-with-mental-health-services-approach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-provider---primary/output
  contact-with-mental-health-services-graduate---primary:
    run: contact-with-mental-health-services-graduate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-approach---primary/output
  psychosexual-contact-with-mental-health-services---primary:
    run: psychosexual-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-graduate---primary/output
  contact-with-mental-health-services-handicap---primary:
    run: contact-with-mental-health-services-handicap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: psychosexual-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-trainee---primary:
    run: contact-with-mental-health-services-trainee---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-handicap---primary/output
  contact-with-mental-health-services-emergency---primary:
    run: contact-with-mental-health-services-emergency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-trainee---primary/output
  private-contact-with-mental-health-services---primary:
    run: private-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-emergency---primary/output
  contact-with-mental-health-services-district---primary:
    run: contact-with-mental-health-services-district---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: private-contact-with-mental-health-services---primary/output
  under-contact-with-mental-health-services---primary:
    run: under-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-district---primary/output
  psychodynamic-contact-with-mental-health-services---primary:
    run: psychodynamic-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: under-contact-with-mental-health-services---primary/output
  cognitive-contact-with-mental-health-services---primary:
    run: cognitive-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: psychodynamic-contact-with-mental-health-services---primary/output
  adolescent-contact-with-mental-health-services---primary:
    run: adolescent-contact-with-mental-health-services---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cognitive-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-worker---primary:
    run: contact-with-mental-health-services-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: adolescent-contact-with-mental-health-services---primary/output
  contact-with-mental-health-services-assessment---primary:
    run: contact-with-mental-health-services-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-worker---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: contact-with-mental-health-services-assessment---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
