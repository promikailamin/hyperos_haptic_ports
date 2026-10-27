.class public Lcom/android/server/custom/CustomDeviceConfigService;
.super Lcom/android/server/SystemService;
.source "CustomDeviceConfigService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/custom/CustomDeviceConfigService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_8

    const/4 p0, 0x0

    .line 31
    invoke-static {p0, p0}, Lcom/android/internal/util/custom/DeviceConfigUtils;->setDefaultProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method
