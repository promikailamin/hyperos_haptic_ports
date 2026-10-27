.class public final Lcom/android/server/MemoryPressureUtil$Psi;
.super Ljava/lang/Object;
.source "MemoryPressureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MemoryPressureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Psi"
.end annotation


# instance fields
.field public final full:Lcom/android/server/MemoryPressureUtil$Prop;

.field public final some:Lcom/android/server/MemoryPressureUtil$Prop;


# direct methods
.method private constructor <init>(Lcom/android/server/MemoryPressureUtil$Prop;Lcom/android/server/MemoryPressureUtil$Prop;)V
    .registers 3
    .param p1, "some"    # Lcom/android/server/MemoryPressureUtil$Prop;
    .param p2, "full"    # Lcom/android/server/MemoryPressureUtil$Prop;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/server/MemoryPressureUtil$Psi;->some:Lcom/android/server/MemoryPressureUtil$Prop;

    .line 119
    iput-object p2, p0, Lcom/android/server/MemoryPressureUtil$Psi;->full:Lcom/android/server/MemoryPressureUtil$Prop;

    .line 120
    return-void
.end method

.method public static parseFromRawString(Ljava/lang/String;)Lcom/android/server/MemoryPressureUtil$Psi;
    .registers 5
    .param p0, "raw"    # Ljava/lang/String;

    .line 122
    const-string v0, "\\R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/server/MemoryPressureUtil$Prop;->parseFromLine(Ljava/lang/String;)Lcom/android/server/MemoryPressureUtil$Prop;

    move-result-object v1

    .line 124
    .local v1, "some":Lcom/android/server/MemoryPressureUtil$Prop;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/android/server/MemoryPressureUtil$Prop;->parseFromLine(Ljava/lang/String;)Lcom/android/server/MemoryPressureUtil$Prop;

    move-result-object v2

    .line 125
    .local v2, "full":Lcom/android/server/MemoryPressureUtil$Prop;
    new-instance v3, Lcom/android/server/MemoryPressureUtil$Psi;

    invoke-direct {v3, v1, v2}, Lcom/android/server/MemoryPressureUtil$Psi;-><init>(Lcom/android/server/MemoryPressureUtil$Prop;Lcom/android/server/MemoryPressureUtil$Prop;)V

    return-object v3
.end method
