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
    // float strength = step(0.8, mod(vUv.x * 10.0,  1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0,  1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 13
    // float strength = step(0.4, mod(vUv.x * 10.0,  1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0,  1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0,  1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0,  1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0,  1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0,  1.0));

    // float strength = barX + barY;
    
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 15
    // float barX = step(0.4, mod(vUv.x * 10.0,  1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2,  1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2,  1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0,  1.0));

    // float strength = barX + barY;
    
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 16
    // float strength = abs(vUv.x - 0.5);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 17
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 18
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 19
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 20
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // strength *= 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 21
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 22
    float strength = floor(vUv.x * 10.0) / 10.0;
    strength *= floor(vUv.y * 10.0) / 10.0;
    gl_FragColor = vec4(strength, strength, strength, 1.0);


}