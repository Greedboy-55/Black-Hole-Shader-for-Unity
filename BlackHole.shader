// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33230,y:32708,varname:node_3138,prsc:2|emission-4097-OUT;n:type:ShaderForge.SFN_Fresnel,id:5869,x:32225,y:33021,varname:node_5869,prsc:2|EXP-6124-OUT;n:type:ShaderForge.SFN_SceneColor,id:4035,x:33045,y:32821,varname:node_4035,prsc:2|UVIN-1918-OUT;n:type:ShaderForge.SFN_NormalVector,id:162,x:32105,y:32632,prsc:2,pt:False;n:type:ShaderForge.SFN_Negate,id:9398,x:32287,y:32632,varname:node_9398,prsc:2|IN-162-OUT;n:type:ShaderForge.SFN_Transform,id:2592,x:32464,y:32632,varname:node_2592,prsc:2,tffrom:1,tfto:3|IN-9398-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3958,x:32645,y:32632,varname:node_3958,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2592-XYZ;n:type:ShaderForge.SFN_ScreenPos,id:3458,x:32835,y:32999,varname:node_3458,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:1918,x:32845,y:32821,varname:node_1918,prsc:2|A-6238-OUT,B-3458-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6238,x:32632,y:32821,varname:node_6238,prsc:2|A-3958-OUT,B-7720-OUT;n:type:ShaderForge.SFN_Slider,id:6124,x:31826,y:33040,ptovrint:False,ptlb:Frensnel Exponent,ptin:_FrensnelExponent,varname:node_6124,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9565218,max:15;n:type:ShaderForge.SFN_OneMinus,id:9802,x:32398,y:33021,varname:node_9802,prsc:2|IN-5869-OUT;n:type:ShaderForge.SFN_Power,id:7720,x:32570,y:33087,varname:node_7720,prsc:2|VAL-9802-OUT,EXP-8106-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8106,x:32343,y:33176,ptovrint:False,ptlb:Value,ptin:_Value,varname:node_8106,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_Round,id:3838,x:32398,y:33270,varname:node_3838,prsc:2|IN-4817-OUT;n:type:ShaderForge.SFN_Slider,id:931,x:31814,y:33289,ptovrint:False,ptlb:Hole Size (Inverted),ptin:_HoleSizeInverted,varname:node_931,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:300;n:type:ShaderForge.SFN_Multiply,id:4817,x:32196,y:33270,varname:node_4817,prsc:2|A-5869-OUT,B-931-OUT;n:type:ShaderForge.SFN_Clamp,id:5752,x:32620,y:33270,varname:node_5752,prsc:2|IN-3838-OUT,MIN-5191-OUT,MAX-568-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5191,x:32347,y:33437,ptovrint:False,ptlb:node_5191,ptin:_node_5191,varname:node_5191,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:568,x:32347,y:33533,ptovrint:False,ptlb:node_568,ptin:_node_568,varname:node_568,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4097,x:32905,y:33189,varname:node_4097,prsc:2|A-4035-RGB,B-5752-OUT;proporder:6124-8106-931-5191-568;pass:END;sub:END;*/

Shader "Shader Forge/BlackHole" {
    Properties {
        _FrensnelExponent ("Frensnel Exponent", Range(0, 15)) = 0.9565218
        _Value ("Value", Float ) = 6
        _HoleSizeInverted ("Hole Size (Inverted)", Range(1, 300)) = 3
        [HideInInspector]_node_5191 ("node_5191", Float ) = 0
        [HideInInspector]_node_568 ("node_568", Float ) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _FrensnelExponent)
                UNITY_DEFINE_INSTANCED_PROP( float, _Value)
                UNITY_DEFINE_INSTANCED_PROP( float, _HoleSizeInverted)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_5191)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_568)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float _FrensnelExponent_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FrensnelExponent );
                float node_5869 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FrensnelExponent_var);
                float _Value_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Value );
                float _HoleSizeInverted_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HoleSizeInverted );
                float _node_5191_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_5191 );
                float _node_568_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_568 );
                float3 emissive = (tex2D( _GrabTexture, ((UnityObjectToViewPos( float4((-1*i.normalDir),0) ).xyz.rgb.rg*pow((1.0 - node_5869),_Value_var))+sceneUVs.rg)).rgb*clamp(round((node_5869*_HoleSizeInverted_var)),_node_5191_var,_node_568_var));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
