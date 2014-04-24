using System;
using System.Windows.Forms;

namespace IceAndFire
{
	public static class ConsoleExtensions
	{
		public static void WriteCentered(string text, char space = ' ')
		{
			if (string.IsNullOrEmpty(text))
				throw new ArgumentNullException("text");
			if (text.Length > Console.WindowWidth)
				throw new ArgumentException("text longer than window width.", "text");

			// add space is text length odd and window width is even
			if ((text.Length % 2 == 1) && (Console.WindowWidth % 2 == 0))
				text += space;
			// add space is text length even and window width is odd
			if ((text.Length % 2 == 0) && (Console.WindowWidth % 2 == 1))
				text += space;

			// write text surrounded by spaces
			int numSpaces = Console.WindowWidth - text.Length;
			for (int i = 0; i < numSpaces / 2; ++i)
				Console.Write(space);
			Console.Write(text);
			for (int i = 0; i < numSpaces / 2; ++i)
				Console.Write(space);
		}

		public static void WritePadded(string text, int width, bool truncate = true)
		{
			if ((text.Length >= width) && !truncate)
				throw new ArgumentException("text longer than allowed width.", "text");

			// null ==> empty
			if (text == null)
				text = "";

			// truncate if needed
			if ((text.Length >= width) && truncate)
				text = text.Substring(0, width - 4) + "...";

			// write text padded by spaces
			Console.Write(text);
			for (int i = text.Length; i < width; ++i)
				Console.Write(' ');
		}

		public static string DoEditField(string prompt, string value)
		{
			Console.Write("{0}: ", prompt);
			SendKeys.SendWait(value);
			return Console.ReadLine();
		}
	}
}