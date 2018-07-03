#version 120

varying vec4 diffuse,ambientGlobal, ambient;  
varying vec3 normal,lightDir,halfVector;  
varying float dist;  

void main()  
{  
    vec3 n,halfV,viewV,ldir;  
    float NdotL,NdotHV;  
    vec4 color = ambientGlobal;  
    float att;  
    /* a fragment shader can't write a varying variable, hence we need 
    a new variable to store the normalized interpolated normal */  
    n = normalize(normal);  
    /* compute the dot product between normal and ldir */  
NdotL = max(dot(n,normalize(lightDir)),0.0);  

if (NdotL > 0.0)  
{  
    spotEffect = dot(normalize(gl_LightSource[0].spotDirection),  
            normalize(-lightDir));  
    if (spotEffect > gl_LightSource[0].spotCosCutoff)  
    {  
        /* compute the illumination in here */  
    }  
}  
    gl_FragColor = color;  
} 