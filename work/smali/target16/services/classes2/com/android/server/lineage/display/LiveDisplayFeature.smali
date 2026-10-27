.class public abstract Lcom/android/server/lineage/display/LiveDisplayFeature;
.super Ljava/lang/Object;
.source "LiveDisplayFeature.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNightDisplayAvailable:Z

.field public mSettingsObserver:Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;

.field public mState:Lcom/android/server/lineage/display/LiveDisplayService$State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-string v0, "LiveDisplay"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mNightDisplayAvailable:Z

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 104
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_f

    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getCapabilities(Ljava/util/BitSet;)Z
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    .line 114
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getMode()I
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    return p0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTwilight()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    return-object p0
.end method

.method public final isLowPowerMode()Z
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-boolean p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    return p0
.end method

.method public final isNight()Z
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->isNight()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isScreenOn()Z
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-boolean p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    return p0
.end method

.method public onScreenStateChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onStart()V
.end method

.method public onTwilightUpdated()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract onUpdate()V
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 109
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 4

    .line 119
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final varargs registerSettings([Landroid/net/Uri;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;->register([Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;

    if-nez v0, :cond_10

    .line 86
    new-instance v0, Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;-><init>(Lcom/android/server/lineage/display/LiveDisplayFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mSettingsObserver:Lcom/android/server/lineage/display/LiveDisplayFeature$SettingsObserver;

    .line 87
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->onStart()V

    :cond_10
    return-void
.end method

.method public update(ILcom/android/server/lineage/display/LiveDisplayService$State;)V
    .registers 3

    .line 69
    iput-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    .line 70
    sget p2, Lcom/android/server/lineage/display/LiveDisplayService;->DISPLAY_CHANGED:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_a

    .line 71
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->onScreenStateChanged()V

    .line 73
    :cond_a
    sget p2, Lcom/android/server/lineage/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-object p2, p2, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    if-eqz p2, :cond_18

    .line 74
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->onTwilightUpdated()V

    .line 76
    :cond_18
    sget p2, Lcom/android/server/lineage/display/LiveDisplayService;->MODE_CHANGED:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_20

    .line 77
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->onUpdate()V

    .line 79
    :cond_20
    sget p2, Lcom/android/server/lineage/display/LiveDisplayService;->ALL_CHANGED:I

    if-ne p1, p2, :cond_28

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_28
    return-void
.end method
