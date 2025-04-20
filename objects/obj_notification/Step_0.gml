y = lerp(y, targetY, 0.1);

// Calcula distância atual e total
var totalDist = abs(targetY - startY);
var currentDist = abs(targetY - y);

// Calcula alpha proporcional à distância
image_alpha = clamp(currentDist / totalDist, 0, 1);

// Quando estiver suficientemente próximo, destruir
if (currentDist < 0.1) {
    instance_destroy();
}
