.class Lcom/android/server/powerstats/PowerStatsLogger$2;
.super Ljava/lang/Object;
.source "PowerStatsLogger.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsLogger;

.field final synthetic val$pos:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/powerstats/PowerStatsLogger;

    .line 189
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->this$0:Lcom/android/server/powerstats/PowerStatsLogger;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadDataElement([B)V
    .registers 6
    .param p1, "data"    # [B

    .line 193
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v0, "pis":Landroid/util/proto/ProtoInputStream;
    nop

    .line 199
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v1

    .line 200
    .local v1, "energyConsumerResult":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->val$pos:Landroid/util/proto/ProtoOutputStream;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 204
    .end local v0    # "pis":Landroid/util/proto/ProtoInputStream;
    .end local v1    # "energyConsumerResult":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_20

    .line 202
    :catch_16
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to write energy model data to incident report."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :goto_20
    return-void
.end method
