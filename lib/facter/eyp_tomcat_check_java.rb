
java=Facter::Util::Resolution.exec('bash -c \'which java 2>/dev/null \'')

Facter.add('eyp_tomcat_check_java') do
    setcode do
      if (env.nil? or env.empty?)
        false
      else
        true
      end
    end
end
