# NOTICE

This repository packages and redistributes upstream software published by the
[just](https://just.systems) project. The Apache-2.0 license in
[`LICENSE`](LICENSE) covers the OCX pipeline files authored here. It does
**not** cover any upstream-derived asset — each package's redistributed bytes
carry their own license, recorded below.

Each package's logo is reproduced for catalog identification only, under
nominative fair use. The marks remain the property of their respective owners
and no endorsement is implied.

| Package | GHCR path | Upstream SPDX |
|---|---|---|
| `just` | `ghcr.io/ocx-contrib/just/just` | `CC0-1.0` |

---

## `just`

Upstream: <https://github.com/casey/just>
Published to `ghcr.io/ocx-contrib/just/just`.

| Component | SPDX | Holder |
|---|---|---|
| just (`just`) | **CC0-1.0** | Casey Rodarmor |

CC0 1.0 Universal is a public-domain dedication: the author waives copyright
and related rights worldwide to the extent permitted by law, so redistribution
of the compiled binary is granted unconditionally — no notice-retention
condition attaches. The dedication text nonetheless ships inside the mirrored
archives' `LICENSE` file, republished unmodified. The published binaries
statically link third-party Rust crates under permissive licenses, enumerated
in the `Cargo.lock` shipped in the same archives.

No modifications are made to any upstream artifact in this repository; they are
republished byte-for-byte inside an OCX bundle.
