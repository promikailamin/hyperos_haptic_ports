.class public Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public uptimeMillis()J
    .registers 3

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
