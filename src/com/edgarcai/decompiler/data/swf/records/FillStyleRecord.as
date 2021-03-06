package com.edgarcai.decompiler.data.swf.records
{
	import com.edgarcai.decompiler.SWFByteArray;
	import com.edgarcai.decompiler.SWFReader;

	public class FillStyleRecord implements IRecord
	{
		public var type:uint;
		public var color:RGBRecord;
		public var gradientMatrix:MatrixRecord;
		public var gradient:GradientRecord;
		public var bitmapId:uint;
		public var bitmapMatrix:MatrixRecord;

		public function FillStyleRecord(type:uint = 0, color:RGBRecord = null, gradientMatrix:MatrixRecord = null, gradient:GradientRecord = null, bitmapId:uint = 0, bitmapMatrix:MatrixRecord = null)
		{
			if(color == null)
			{
				color = new RGBRecord();
			}
			if(gradientMatrix == null)
			{
				gradientMatrix = new MatrixRecord();
			}
			if(gradient == null)
			{
				gradient = new GradientRecord();
			}
			if(bitmapMatrix == null)
			{
				bitmapMatrix = new MatrixRecord();
			}

			this.type = type;
			this.color = color;
			this.gradientMatrix = gradientMatrix;
			this.gradient = gradient;
			this.bitmapId = bitmapId;
			this.bitmapMatrix = bitmapMatrix;
		}
	}
}
