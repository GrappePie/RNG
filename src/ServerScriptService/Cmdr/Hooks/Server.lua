local ADMINS = {
	[7344703077] = true
} 

return function(registry)
	registry:RegisterHook("BeforeRun", function(context)
		if context.Group == "Server" and not ADMINS[context.Executor.UserId] then
			return "You don't have permission to run this command"
		end
	end)
end