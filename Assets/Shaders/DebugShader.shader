﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/DebugShader"
{
	SubShader
	{
		Pass
		{
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			struct v2f
			{
				float4 pos:SV_POSITION;
				fixed4 color:COLOR0;
			};

			v2f vert(appdata_full v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.color.xyz = v.normal * 0.5 + fixed3(0.5,0,5,0.5);
				o.color.w = 1.0;
				//o.color = fixed4(v.normal*0.5+fixed3(0.5,0.5,0,5),1.0);
				return o;
			}
			
			fixed4 frag(v2f i):SV_Target
			{
				return i.color;
			}
			
			ENDCG
		}
	}
}
