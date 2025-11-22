# Drawing a simple architectural diagram and saving as a PNG file.
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(12, 8))
ax.axis('off')


def draw_box(x, y, w, h, label, fontsize=10):
    rect = plt.Rectangle((x, y), w, h, fill=True, edgecolor='black', linewidth=1, facecolor='whitesmoke')
    ax.add_patch(rect)
    ax.text(x + w / 2, y + h / 2, label, ha='center', va='center', fontsize=fontsize, wrap=True)


# Draw components
draw_box(0.05, 0.78, 0.25, 0.18,
         "Data Sources\n• Roadside sensors\n• Cameras (edge)\n• Mobile probes\n• 3rd-party feeds", fontsize=9)
draw_box(0.38, 0.78, 0.25, 0.18, "Edge Preprocessing\n• Aggregation\n• Anonymization\n• CV inference (optional)",
         fontsize=9)
draw_box(0.71, 0.78, 0.25, 0.18, "Message Bus\nKafka / Kinesis\n(Topic per sensor type)", fontsize=10)

draw_box(0.05, 0.48, 0.3, 0.18, "Stream Processing\nFlink / Spark\nReal-time aggregates & alerts", fontsize=9)
draw_box(0.38, 0.48, 0.28, 0.18, "Batch Processing\nSpark / Dataflow\nHistoric analytics & ML training", fontsize=9)
draw_box(0.71, 0.48, 0.25, 0.18, "Feature Store / ML\nFeast / Parquet\nModel artifacts", fontsize=9)

draw_box(0.05, 0.18, 0.3, 0.18, "Hot Storage\nTimescaleDB / ClickHouse\nHigh-res time series", fontsize=9)
draw_box(0.38, 0.18, 0.28, 0.18, "Cold Storage\nS3 / GCS\nRaw files, video, parquet", fontsize=9)
draw_box(0.71, 0.18, 0.25, 0.18, "Serving & Dashboard\nAPIs, Redis cache\nGrafana / Operator UI", fontsize=9)

# Arrows
import matplotlib.patches as patches


def arrow(x1, y1, x2, y2):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle="->", linewidth=1.2))


arrow(0.3, 0.86, 0.38, 0.86)  # sources -> edge
arrow(0.63, 0.86, 0.71, 0.86)  # edge -> bus
arrow(0.83, 0.78, 0.83, 0.66)  # bus down to processing
arrow(0.83, 0.58, 0.83, 0.36)  # bus down to storage
arrow(0.35, 0.66, 0.35, 0.56)  # stream processing down
arrow(0.58, 0.66, 0.58, 0.56)  # batch processing down
arrow(0.19, 0.48, 0.19, 0.36)  # stream to hot storage
arrow(0.52, 0.48, 0.52, 0.36)  # batch to cold storage
arrow(0.88, 0.36, 0.88, 0.26)  # storage to serving

# Labels
ax.text(0.5, 0.95, "Traffic Sensor Data Processing Architecture", ha='center', fontsize=14, fontweight='bold')
ax.text(0.5, 0.72, "Ingestion → Processing → Storage → Serving", ha='center', fontsize=10)


plt.show()

print("Saved diagram to /mnt/data/traffic_pipeline.png")
