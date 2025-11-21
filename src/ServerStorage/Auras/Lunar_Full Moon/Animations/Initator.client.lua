script.Parent:GetAttributeChangedSignal("Reboot"):Connect(function()
	script.Parent.Disabled = true;
	task.wait();
	script.Parent.Disabled = false;
end);
