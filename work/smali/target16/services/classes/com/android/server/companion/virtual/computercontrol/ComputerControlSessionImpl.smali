.class public abstract Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionImpl;
.super Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;
.source "ComputerControlSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final CUSTOM_BLOCKED_APP_ACTIVITY:Landroid/content/ComponentName;

.field static final KEY_EVENT_DELAY_MS:J = 0xaL

.field static final LONG_PRESS_TIMEOUT_MULTIPLIER:F = 1.5f

.field static final PRODUCT_ID_DPAD:I = 0xcc01

.field static final PRODUCT_ID_KEYBOARD:I = 0xcc02

.field static final PRODUCT_ID_TOUCHSCREEN:I = 0xcc03

.field static final SWIPE_STEPS:I = 0xa

.field static final TOUCH_EVENT_DELAY_MS:J = 0x32L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.virtualdevicemanager"

    const-string v2, "com.android.virtualdevicemanager.NotifyComputerControlBlockedActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionImpl;->CUSTOM_BLOCKED_APP_ACTIVITY:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public abstract getDeviceId()I
.end method
