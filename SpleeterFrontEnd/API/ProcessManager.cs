using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Reflection;

class ProcessManager
{
	private static List<int> ProcessId = new List<int>();

	internal static int Execute(string args)
	{
		var PATH = Environment.GetEnvironmentVariable("PATH");
		var VENV = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "System");
		var FFMP = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "FFmpeg");

		Environment.SetEnvironmentVariable("PATH", $"{Path.Combine(VENV, "Scripts")};{FFMP};{PATH}");

		Environment.SetEnvironmentVariable("ARGS", args); // allow unicode text in Command Prompt/Terminal

        Process proc = new Process
		{
			StartInfo = new ProcessStartInfo("cmd")
			{
				CreateNoWindow = true,
				UseShellExecute = false,
				WorkingDirectory = VENV,
				RedirectStandardError = true,
				RedirectStandardInput = true,
				RedirectStandardOutput = true,
			}
		};

		proc.Start();

		ProcessId.Add(proc.Id);

		proc.StandardInput.WriteLine($"activate");
		proc.StandardInput.WriteLine($"spleeter separate %ARGS% && exit");

		proc.WaitForExit();

		proc.StandardInput.Flush();
		proc.StandardInput.Close();

		ProcessId.Remove(proc.Id);

		return proc.ExitCode;
	}

	internal static void Stop()
	{
		Process[] process = Process.GetProcesses();

		foreach (var pid in ProcessId)
		{
			foreach (Process prs in process)
			{
				if (prs.Id == pid)
				{
					prs.Kill();
					break;
				}
			}
		}
	}
}

