.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static final blacklist ABUSIVE_BACKGROUND_APPS:Ljava/lang/String; = "ABUSIVE_BACKGROUND_APPS"

.field public static final blacklist ACCESSIBILITY_HEARING_DEVICE:Ljava/lang/String; = "ACCESSIBILITY_HEARING_DEVICE"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String; = "ACCESSIBILITY_MAGNIFICATION"

.field public static final blacklist ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String; = "ACCESSIBILITY_SECURITY_POLICY"

.field public static final blacklist ACCOUNT:Ljava/lang/String; = "ACCOUNT"

.field public static final blacklist ALERTS:Ljava/lang/String; = "ALERTS"

.field public static final blacklist CAR_MODE:Ljava/lang/String; = "CAR_MODE"

.field public static final blacklist DEVELOPER:Ljava/lang/String; = "DEVELOPER"

.field public static final blacklist DEVELOPER_IMPORTANT:Ljava/lang/String; = "DEVELOPER_IMPORTANT"

.field public static final blacklist DEVICE_ADMIN:Ljava/lang/String; = "DEVICE_ADMIN_ALERTS"

.field public static final blacklist DEVICE_ADMIN_DEPRECATED:Ljava/lang/String; = "DEVICE_ADMIN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FOREGROUND_SERVICE:Ljava/lang/String; = "FOREGROUND_SERVICE"

.field public static final blacklist HEAVY_WEIGHT_APP:Ljava/lang/String; = "HEAVY_WEIGHT_APP"

.field public static final blacklist NETWORK_ALERTS:Ljava/lang/String; = "NETWORK_ALERTS"

.field public static final blacklist NETWORK_AVAILABLE:Ljava/lang/String; = "NETWORK_AVAILABLE"

.field public static final blacklist NETWORK_STATUS:Ljava/lang/String; = "NETWORK_STATUS"

.field static final blacklist OBSOLETE_DO_NOT_DISTURB:Ljava/lang/String; = "DO_NOT_DISTURB"

.field public static final blacklist PHYSICAL_KEYBOARD:Ljava/lang/String; = "PHYSICAL_KEYBOARD"

.field public static final blacklist RETAIL_MODE:Ljava/lang/String; = "RETAIL_MODE"

.field public static final blacklist SECURITY:Ljava/lang/String; = "SECURITY"

.field public static final blacklist SYSTEM_CHANGES:Ljava/lang/String; = "SYSTEM_CHANGES_ALERTS"

.field public static final blacklist SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String; = "SYSTEM_CHANGES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TIME:Ljava/lang/String; = "TIME"

.field public static final blacklist UPDATES:Ljava/lang/String; = "UPDATES"

.field public static final blacklist USB:Ljava/lang/String; = "USB"

.field public static blacklist VIRTUAL_KEYBOARD:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist VPN:Ljava/lang/String; = "VPN"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 7

    .line 254
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 256
    :try_start_4
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    .line 257
    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 256
    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1c

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_1c
    move-exception p0

    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist createAll(Landroid/content/Context;)V
    .registers 11

    .line 79
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Landroid/app/NotificationChannel;

    .line 83
    const v3, 0x1040707

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PHYSICAL_KEYBOARD"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Landroid/app/NotificationChannel;

    .line 90
    const v4, 0x1040709

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SECURITY"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Landroid/app/NotificationChannel;

    .line 96
    const v4, 0x10406fa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CAR_MODE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Landroid/app/NotificationChannel;

    .line 105
    const v4, 0x10406fb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DEVELOPER"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v4, Landroid/app/NotificationChannel;

    .line 112
    const v6, 0x10406fc

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEVELOPER_IMPORTANT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Landroid/app/NotificationChannel;

    .line 119
    const v4, 0x104070f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "UPDATES"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Landroid/app/NotificationChannel;

    .line 125
    const v4, 0x1040706

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_STATUS"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Landroid/app/NotificationChannel;

    .line 132
    const v4, 0x1040704

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_ALERTS"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Landroid/app/NotificationChannel;

    .line 139
    const v4, 0x1040705

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_AVAILABLE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 141
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 142
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v2, Landroid/app/NotificationChannel;

    .line 146
    const v4, 0x1040712

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "VPN"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Landroid/app/NotificationChannel;

    .line 152
    const v4, 0x104070e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "TIME"

    const/4 v7, 0x3

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 154
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Landroid/app/NotificationChannel;

    .line 158
    invoke-static {p0}, Lcom/android/internal/notification/SystemNotificationChannels;->getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DEVICE_ADMIN_ALERTS"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 160
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Landroid/app/NotificationChannel;

    .line 164
    const v4, 0x10406f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ALERTS"

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 166
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Landroid/app/NotificationChannel;

    .line 170
    const v4, 0x1040708

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "RETAIL_MODE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Landroid/app/NotificationChannel;

    .line 176
    const v4, 0x1040710

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "USB"

    invoke-direct {v2, v6, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Landroid/app/NotificationChannel;

    .line 182
    const v4, 0x1040700

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "FOREGROUND_SERVICE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Landroid/app/NotificationChannel;

    .line 189
    const v4, 0x1040701

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "HEAVY_WEIGHT_APP"

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 192
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 193
    invoke-virtual {v4, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 194
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 192
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 196
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Landroid/app/NotificationChannel;

    .line 199
    const v4, 0x104070d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "SYSTEM_CHANGES_ALERTS"

    invoke-direct {v2, v9, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 201
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 202
    invoke-virtual {v4, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 203
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 201
    invoke-virtual {v2, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Landroid/app/NotificationChannel;

    .line 209
    const v4, 0x10406f5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ACCESSIBILITY_MAGNIFICATION"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 211
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 212
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v2, Landroid/app/NotificationChannel;

    .line 216
    const v4, 0x10406f4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ACCESSIBILITY_HEARING_DEVICE"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 218
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 219
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Landroid/app/NotificationChannel;

    .line 223
    const v3, 0x10406f6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACCESSIBILITY_SECURITY_POLICY"

    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 225
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Landroid/app/NotificationChannel;

    .line 229
    const v3, 0x10406f3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ABUSIVE_BACKGROUND_APPS"

    invoke-direct {v2, v3, p0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 236
    const-string p0, "DO_NOT_DISTURB"

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private static blacklist getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 240
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 241
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.NOTIFICATION_CHANNEL_DEVICE_ADMIN"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getDeviceAdminNotificationChannelName$0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 242
    const v0, 0x10406fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .registers 4

    .line 264
    new-instance v0, Landroid/app/NotificationChannel;

    .line 266
    const v1, 0x10406f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const-string v2, "ACCOUNT"

    invoke-direct {v0, v2, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 264
    return-object v0
.end method

.method public static blacklist removeDeprecated(Landroid/content/Context;)V
    .registers 2

    .line 247
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 248
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 249
    const-string v0, "DEVICE_ADMIN"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 250
    const-string v0, "SYSTEM_CHANGES"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 251
    return-void
.end method
