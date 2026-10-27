.class final Lcom/android/server/autofill/AutofillUriGrantsManager;
.super Ljava/lang/Object;
.source "AutofillUriGrantsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mUgm:Landroid/app/IUriGrantsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/server/autofill/AutofillUriGrantsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/AutofillUriGrantsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "serviceUid"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I

    .line 71
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUserId:I

    .line 72
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 73
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mUgm:Landroid/app/IUriGrantsManager;

    .line 74
    return-void
.end method

.method private grantUriPermissions(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/IBinder;)V
    .registers 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "permissionOwner"    # Landroid/os/IBinder;

    .line 101
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget v0, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUserId:I

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v13

    .line 102
    .local v13, "sourceUserId":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v14, ", permissionOwner="

    const-string v15, ", targetUserId="

    const-string v10, ", targetPkg="

    const-string v9, ", sourceUserId="

    const-string v8, ", sourceUid="

    if-eqz v0, :cond_66

    .line 103
    sget-object v0, Lcom/android/server/autofill/AutofillUriGrantsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting URI permissions: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_66
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 109
    .local v16, "uriWithoutUserId":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 111
    .local v17, "ident":J
    :try_start_6e
    iget-object v3, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mUgm:Landroid/app/IUriGrantsManager;

    iget v5, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_72} :catch_92
    .catchall {:try_start_6e .. :try_end_72} :catchall_8e

    const/4 v0, 0x1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    move-object/from16 v19, v14

    move-object v14, v8

    move v8, v0

    move-object/from16 v20, v9

    move v9, v13

    move-object v12, v10

    move/from16 v10, p3

    :try_start_83
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_8c
    .catchall {:try_start_83 .. :try_end_86} :catchall_8e

    .line 125
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    move/from16 v5, p3

    goto :goto_ee

    .line 119
    :catch_8c
    move-exception v0

    goto :goto_99

    .line 125
    :catchall_8e
    move-exception v0

    move/from16 v5, p3

    goto :goto_f0

    .line 119
    :catch_92
    move-exception v0

    move-object/from16 v20, v9

    move-object v12, v10

    move-object/from16 v19, v14

    move-object v14, v8

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    :goto_99
    :try_start_99
    sget-object v3, Lcom/android/server/autofill/AutofillUriGrantsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting URI permissions failed: uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_ca
    .catchall {:try_start_99 .. :try_end_ca} :catchall_8e

    move/from16 v5, p3

    :try_start_cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v19

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_cc .. :try_end_e9} :catchall_ef

    .line 125
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    nop

    .line 127
    :goto_ee
    return-void

    .line 125
    :catchall_ef
    move-exception v0

    :goto_f0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw v0
.end method


# virtual methods
.method public grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V
    .registers 12
    .param p1, "targetActivity"    # Landroid/content/ComponentName;
    .param p2, "targetActivityToken"    # Landroid/os/IBinder;
    .param p3, "targetUserId"    # I
    .param p4, "clip"    # Landroid/content/ClipData;

    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "targetPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .local v1, "permissionOwner":Landroid/os/IBinder;
    if-nez v1, :cond_4b

    .line 83
    sget-object v2, Lcom/android/server/autofill/AutofillUriGrantsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t grant URI permissions, because the target activity token is invalid: clip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetActivityToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 89
    :cond_4b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    invoke-virtual {p4}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 90
    invoke-virtual {p4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 91
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 92
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 93
    goto :goto_6c

    .line 95
    :cond_69
    invoke-direct {p0, v4, v0, p3, v1}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 89
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 97
    .end local v2    # "i":I
    :cond_6f
    return-void
.end method
