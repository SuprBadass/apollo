#!/usr/bin/env bash

untar() {
    tar -xvf $1
}

gpg_export () {
    # Trust the key before it can be used an another computer
    gpg --edit-key "$MY_PASS_ID"  # Then enter "trust"

    # Export the keys
    gpg --export --output "$MY_GPG_DIR/p.txt" --armor "$MY_PASS_ID"
    # Check that the file exists
    if [[ ! -r "$MY_GPG_DIR/p.txt" ]]; then
        echoerror 'Failed to export the p key'
        return 1
    fi
    gpg --export-secret-keys --output "$MY_GPG_DIR/s.txt" --armor "$MY_PASS_ID"
    if [[ ! -r "$MY_GPG_DIR/s.txt" ]]; then
        echoerror 'Failed to export the s key'
        return 1
    fi
}

gpg_import () {
    # Import the key
    gpg --import "$MY_GPG_DIR/p.txt"
    gpg --import "$MY_GPG_DIR/s.txt"
}

# Add a new password to the password store
# Arguments:
#   NAME    Name identifying the password
pass_insert () {
    pass insert $1
    #pass insert --echo $1
}

# Get a password by name from the password store
pass_get () {
    pass show --clip $1
}

pass_get_paste () {
    pass show $1
}

# gpg_gen () {
#     gpg --quick-generate-key "$MY_PASS_ID" DSA
# }

# One-time operation on new machines
pass_init () {
    pass init "$MY_PASS_ID"
}
