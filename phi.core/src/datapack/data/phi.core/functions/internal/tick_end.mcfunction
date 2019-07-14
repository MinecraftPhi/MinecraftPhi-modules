# Revoke the host advancement here as well which seems to avoid the log spam.
# See: https://github.com/Arcensoth/tickbuster-datapack/issues/1
advancement revoke @a only phi.core:internal/tick_end

function #phi.core:tick_end