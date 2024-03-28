varying vec2 vUv;

void main()
{
    // Pattern 01
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    // Pattern 02
    // gl_FragColor = vec4(vUv, 0.0, 1.0);

    // Pattern 03
    // float strength = vUv.x;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 04
    // float strength = vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 05
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 06
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 07
    // float strength = mod(vUv.y * 10.0,  1.0);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 08
    // float strength = mod(vUv.y * 10.0,  1.0);
    // possible solution but avoid if conditions: strength = strength < 0.5 ? 0.0 : 1.0;
    // strength = step(0.5, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 09
    // float strength = mod(vUv.y * 10.0,  1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 10
    // float strength = mod(vUv.x * 10.0,  1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 11
    // float strength = step(0.8, mod(vUv.x * 10.0,  1.0));
    // strength += step(0.8, mod(vUv.y * 10.0,  1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 12
    

}