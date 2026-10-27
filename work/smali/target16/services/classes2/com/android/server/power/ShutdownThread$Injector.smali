.class Lcom/android/server/power/ShutdownThread$Injector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultShutdownVibrationEffectFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 957
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040274

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .registers 2

    .line 945
    new-instance p0, Landroid/os/SystemVibrator;

    invoke-direct {p0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public isShutdownVibrationDisabled(Landroid/content/Context;)Z
    .registers 4

    .line 962
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111014c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 964
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    move p1, v0

    goto :goto_1d

    :cond_1c
    move p1, v1

    :goto_1d
    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    return v0

    :cond_22
    return v1
.end method

.method public sleep(J)V
    .registers 3

    .line 950
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
