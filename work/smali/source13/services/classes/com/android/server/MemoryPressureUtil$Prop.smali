.class public final Lcom/android/server/MemoryPressureUtil$Prop;
.super Ljava/lang/Object;
.source "MemoryPressureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MemoryPressureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prop"
.end annotation


# instance fields
.field public final avg10:F

.field public final avg300:F

.field public final avg60:F

.field public final total:J


# direct methods
.method private constructor <init>(FFFJ)V
    .registers 6
    .param p1, "avg10"    # F
    .param p2, "avg60"    # F
    .param p3, "avg300"    # F
    .param p4, "total"    # J

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/android/server/MemoryPressureUtil$Prop;->avg10:F

    .line 100
    iput p2, p0, Lcom/android/server/MemoryPressureUtil$Prop;->avg60:F

    .line 101
    iput p3, p0, Lcom/android/server/MemoryPressureUtil$Prop;->avg300:F

    .line 102
    iput-wide p4, p0, Lcom/android/server/MemoryPressureUtil$Prop;->total:J

    .line 103
    return-void
.end method

.method public static parseFromLine(Ljava/lang/String;)Lcom/android/server/MemoryPressureUtil$Prop;
    .registers 15
    .param p0, "line"    # Ljava/lang/String;

    .line 105
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 107
    .local v2, "avg10":F
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 108
    .local v10, "avg60":F
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 109
    .local v11, "avg300":F
    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 110
    .local v12, "total":J
    new-instance v1, Lcom/android/server/MemoryPressureUtil$Prop;

    move-object v4, v1

    move v5, v2

    move v6, v10

    move v7, v11

    move-wide v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/android/server/MemoryPressureUtil$Prop;-><init>(FFFJ)V

    return-object v1
.end method
