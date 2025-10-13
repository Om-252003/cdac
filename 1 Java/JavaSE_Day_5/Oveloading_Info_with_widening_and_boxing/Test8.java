/*

compilation error: ambiguity

You can combine var-args either with widening or boxing , not both.

*/

package core1;
public class Test8
{
	static void disp(long...x)
	{
		System.out.println("in long var args");
	}
	static void disp(Integer...y)
	{
		System.out.println("in Integer var args");
	}

	public static void main(String args[])
	{
		int p=20,q=30;
		disp(p,q);
	}
}

/*

Step 1: What is being passed?

	You are passing two int values: 20 and 30.

Step 2: How can the compiler match them?

	For disp(long... x):

	int → long (widening primitive conversion)

	Then packaged into a varargs array (long[]). ✅ Valid.


	For disp(Integer... y):

	int → Integer (autoboxing)

	Then packaged into a varargs array (Integer[]). ✅ Valid.

Step 3: Why is it ambiguous?

	Both overloads are applicable.

	Java’s overload resolution rules say:

	Exact match > widening > boxing > varargs.

		But here, both candidates involve varargs + one extra conversion step:

		widening + varargs

		boxing + varargs

		Neither is strictly more specific than the other, so the compiler can’t decide which method to prefer.

			Thus:

				error: reference to disp is ambiguous

Step 4: "You can combine var-args either with widening or boxing, not both."

	That’s exactly the point:

		Java allows widening+varargs.

		Java allows boxing+varargs.

		But when both are possible, the compiler refuses to guess → ambiguity error.

Summary:
Ambiguity arises because the compiler has two equally valid conversion paths (int → long → long[] vs int → Integer → Integer[]), and Java’s rules don’t prefer one over the other.
*/