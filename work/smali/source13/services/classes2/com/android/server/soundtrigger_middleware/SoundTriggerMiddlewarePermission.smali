.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewarePermission.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewarePermission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# direct methods
.method static bridge synthetic -$$Nest$menforcePermissionsForPreflight(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
    .param p2, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 74
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 143
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "status":I
    if-nez v0, :cond_7

    .line 150
    return-void

    .line 146
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 148
    invoke-static {p1, v4}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 147
    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "permission"    # Ljava/lang/String;

    .line 176
    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "status":I
    packed-switch v0, :pswitch_data_2c

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected perimission check result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :pswitch_f
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 185
    invoke-static {p1, v4}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 184
    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :pswitch_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
        :pswitch_f
    .end packed-switch
.end method

.method private enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V
    .registers 4
    .param p1, "identity"    # Landroid/media/permission/Identity;

    .line 118
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private static enforceSoundTriggerRecordAudioPermissionForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V
    .registers 8
    .param p0, "identity"    # Landroid/media/permission/Identity;
    .param p1, "reason"    # Ljava/lang/String;

    .line 154
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 155
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 156
    .local v0, "lpmi":Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    iget v1, p0, Landroid/media/permission/Identity;->uid:I

    iget-object v2, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->checkSoundTriggerRecordAudioPermissionForDataDelivery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "status":I
    if-nez v1, :cond_15

    .line 163
    return-void

    .line 159
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    .line 161
    invoke-static {p0, v5}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 160
    const-string v4, "Failed to obtain permission RECORD_AUDIO for identity %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getIdentity()Landroid/media/permission/Identity;
    .registers 1

    .line 108
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 7
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 89
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    .line 90
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    .line 91
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 92
    .local v1, "wrapper":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    move-result-object v2

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 194
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_b

    .line 195
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 197
    :cond_b
    return-void
.end method

.method enforcePermissionsForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V
    .registers 5
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "reason"    # Ljava/lang/String;

    .line 126
    invoke-static {p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforceSoundTriggerRecordAudioPermissionForDataDelivery(Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->getIdentity()Landroid/media/permission/Identity;

    move-result-object v0

    .line 81
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
