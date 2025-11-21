local ADMINS = {
	[234234234] = true
} 

return function(registry)
	registry:RegisterHook("BeforeRun", function(context)
		if context.Group == "DefaultDebug" and not ADMINS[context.Executor.UserId] then
			return "You don't have permission to run this command"
		end
	end)
end