.class public final Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;
.super Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;
.source "DeviceStateAutoRotateSettingController.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 615
    new-instance v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;

    invoke-direct {v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;-><init>()V

    sput-object v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;->INSTANCE:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 622
    const-string p0, "PersistedSettingUpdate"

    return-object p0
.end method
