
require "../src/megauni_pg"
require "da_spec"


extend DA_SPEC

DEFAULT_PASSWORD = "this is a BAD password"
RANDOM_NAMES = [] of String

def random_name(prefix = "mu_random")
  name = "#{prefix}_#{Time.now.epoch}_#{RANDOM_NAMES.size}"
  RANDOM_NAMES << name
  name
end # === def

struct SPECS

  getter cluster : Postgresql::Database_Cluster

  def initialize
    @cluster = Postgresql::Database_Cluster.new(311, "pg-meguani", "megauni_db", "base")
  end # === def

  def reset_tables!
  end # === def

end # === module SPECS

require "./010-members"
require "./011-conversation_activity"
