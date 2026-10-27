.class public Landroid/credentials/selection/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredManIntentHelper"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method public static blacklist createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;
    .registers 7

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    .line 154
    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    .line 155
    new-instance p0, Landroid/credentials/selection/CancelSelectionRequest;

    new-instance p4, Landroid/credentials/selection/RequestToken;

    invoke-direct {p4, p1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p4, p2, p3}, Landroid/credentials/selection/CancelSelectionRequest;-><init>(Landroid/credentials/selection/RequestToken;ZLjava/lang/String;)V

    const-string p1, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntent(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 139
    invoke-static/range {p0 .. p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 139
    return-object p0
.end method

.method public static blacklist createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 73
    invoke-static {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 105
    invoke-static {p0, p1, p3, p4, p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    return-object p0
.end method

.method private static blacklist createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    .line 174
    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    .line 175
    const-string p0, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 177
    const-string p0, "android.credentials.selection.extra.REQUEST_INFO"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    nop

    .line 179
    invoke-static {p3}, Landroid/credentials/selection/IntentFactory;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p0

    .line 178
    const-string p1, "android.credentials.selection.extra.RESULT_RECEIVER"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->build()Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;
    .registers 10

    .line 222
    nop

    .line 224
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    const v1, 0x10402c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CredManIntentHelper"

    const/4 v3, 0x0

    if-nez v1, :cond_d8

    .line 229
    nop

    .line 231
    :try_start_16
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1b

    .line 235
    goto :goto_3d

    .line 233
    :catch_1b
    move-exception v1

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse OEM component name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 236
    :goto_3d
    if-eqz v1, :cond_cd

    .line 238
    :try_start_3f
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 240
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->propagateUserContextForIntentCreation()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 242
    const-wide/32 v4, 0x100000

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    .line 241
    invoke-virtual {p2, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    goto :goto_66

    .line 245
    :cond_5c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 248
    :goto_66
    nop

    .line 249
    if-eqz p2, :cond_a9

    .line 250
    iget-boolean v4, p2, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 252
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    .line 253
    const/4 v5, 0x1

    if-ne p0, v5, :cond_78

    .line 255
    move v4, v5

    goto :goto_7c

    .line 256
    :cond_78
    const/4 v5, 0x2

    if-ne p0, v5, :cond_7c

    .line 258
    const/4 v4, 0x0

    .line 260
    :cond_7c
    :goto_7c
    if-eqz v4, :cond_9f

    iget-boolean p0, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p0, :cond_9f

    .line 261
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Found enabled oem CredMan UI component."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object v3, v1

    goto :goto_a9

    .line 268
    :cond_9f
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 270
    const-string p0, "Found enabled oem CredMan UI component but it was not enabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_a9} :catch_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_a9} :catch_aa

    .line 280
    :cond_a9
    :goto_a9
    goto :goto_d7

    .line 275
    :catch_aa
    move-exception p0

    .line 276
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to find oem CredMan UI component: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 282
    :cond_cd
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 284
    const-string p0, "Invalid OEM ComponentName format."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_d7
    goto :goto_e2

    .line 287
    :cond_d8
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 289
    const-string p0, "Invalid empty OEM component name."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_e2
    return-object v3
.end method

.method private static blacklist setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V
    .registers 6

    .line 186
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->configurableSelectorUiEnabled()Z

    move-result v0

    const v1, 0x104029d

    if-eqz v0, :cond_44

    .line 187
    invoke-static {p0, p2, p3}, Landroid/credentials/selection/IntentFactory;->getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;

    move-result-object p0

    .line 190
    nop

    .line 193
    const/4 p3, 0x0

    :try_start_f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    .line 196
    nop

    .line 197
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p2, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    .line 200
    goto :goto_3d

    .line 198
    :catch_24
    move-exception p2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fallback CredMan IU not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CredManIntentHelper"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_3d
    if-nez p0, :cond_40

    .line 203
    move-object p0, p3

    .line 206
    :cond_40
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    goto :goto_53

    .line 208
    :cond_44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 211
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    :goto_53
    return-void
.end method

.method private static blacklist toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 304
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    return-object p0
.end method
