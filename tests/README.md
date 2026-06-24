# Preparation of Receptor
## ChimeraX

1. Download PDB id `3wzd` (human vascular endothelial growth factor receptor 2)
2. Select ligand `LEV`
3. Command: `measure center sel` -> `(1.02, -6.92, 15.75)`
4. Remove the ligand and create an receptor only PDB file
5. `pdb4amber`
6. `$ obabel 3WZD-receptor.pdb -O 3WZD-receptor.pdbqt -xr -p 7.4 --partialcharge eem`

The -p flag indicates proper addition of H’s at 7.4 (or whatever number you put in). The -xr flag is to
force it into a rigid molecule (i.e. minimize branches to help keep the file small). The --partialcharge flag
indicates what method to use for partial charges (eem is Bultinck B3LYP/6-31G*/MPA). If you want a list
of partial charge methods, use the following:

```sh
$ obabel -L charges
```

```bash
(easydock) [shbae@eristm01 tests]$ easydock -i input.smi -o output.db -c 2
[2026-06-24 12:14:10] INFO: (PID:3240969) initialization took 2.05 seconds
[2026-06-24 12:14:10] INFO: (PID:3240969) input parsing error log: /home2/shbae/bucket/easydock/tests/output.db_input_parsing_error.log (2 records)
input parsing error log: /home2/shbae/bucket/easydock/tests/output.db_input_parsing_error.log (2 records)
[2026-06-24 12:14:10] INFO: (PID:3240969) protonation skipped
[2026-06-24 12:14:10] INFO: (PID:3240969) Preparation stage statistics:
[2026-06-24 12:14:10] INFO: (PID:3240969) input structures: 2
[2026-06-24 12:14:10] INFO: (PID:3240969) successfully read structures: 2
[2026-06-24 12:14:10] INFO: (PID:3240969) generated stereoisomers: 2
[2026-06-24 12:14:10] INFO: (PID:3240969) input compounds failed stereoisomer generation: 0
[2026-06-24 12:14:10] INFO: (PID:3240969) protonated structures/stereoisomers: 0
[2026-06-24 12:14:10] INFO: (PID:3240969) structures/stereoisomers failed protonation: 0
```