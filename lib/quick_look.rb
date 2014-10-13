require "quick_look/version"

module QuickLook
  class << self
    def instance
      @instance ||= Instance.new
    end
  end

  class Instance
    def initialize
      @pid_map = {}
    end

    def open(path)
      return if pid_for(path)
      add_pid path, Process.spawn("qlmanage -p #{path} >& /dev/null", pgroup: true)
    end

    def close(path)
      if pid = pid_for(path)
        Process.kill("-HUP", pid)
      end
    end

    private

    def add_pid(path, pid)
      @pid_map[path] = pid
    end

    def pid_for(path)
      pid = @pid_map[path]
      if pid && !pid_alive?(pid)
        pid = nil
        @pid_map.delete(path)
      end
      pid
    end

    def pid_alive?(pid)
      !!Process.getpgid(pid)
    rescue Errno::ESRCH # pid is dead
      false
    end
  end
end
