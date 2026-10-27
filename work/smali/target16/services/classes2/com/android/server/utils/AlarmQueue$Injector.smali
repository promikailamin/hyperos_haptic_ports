.class Lcom/android/server/utils/AlarmQueue$Injector;
.super Ljava/lang/Object;
.source "AlarmQueue.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealtime()J
    .registers 3

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
