.class public Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
.super Ljava/lang/Object;
.source "CoreSettingsObserver.java"


# instance fields
.field public coreSettingKey:Ljava/lang/String;

.field public defaultValue:Ljava/lang/Object;

.field public flag:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    .line 72
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    return-void
.end method
