.class public abstract Lcom/android/server/pm/SaferIntentUtils;
.super Ljava/lang/Object;
.source "SaferIntentUtils.java"


# static fields
.field public static final DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;


# direct methods
.method public static synthetic $r8$lambda$ET4wDE7Im4gCE7ebSKX-kIwikNI()Ljava/lang/Boolean;
    .registers 1

    .line 78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic $r8$lambda$mGphpbTqJdvD1YYxyb0Qke4Jry4(I)[Ljava/lang/String;
    .registers 1

    .line 132
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 9

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_59

    .line 217
    :cond_9
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_59

    .line 219
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v0, Lcom/android/server/pm/Computer;

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_1d
    if-ltz v1, :cond_59

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 229
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_4a

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_2d

    goto :goto_59

    :cond_2d
    if-nez v3, :cond_33

    .line 235
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v3

    .line 238
    :cond_33
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 237
    invoke-static {v4, v3, v5}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 239
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_4e

    .line 242
    :cond_4a
    instance-of v4, v4, Landroid/content/IntentFilter;

    if-eqz v4, :cond_50

    :goto_4e
    move v4, v6

    goto :goto_51

    :cond_50
    move v4, v2

    :goto_51
    if-nez v4, :cond_56

    .line 247
    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_59
    :goto_59
    return-void
.end method

.method public static enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 2

    .line 270
    invoke-static {p0, p1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    return-void
.end method

.method public static enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 15

    .line 281
    sget-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_fc

    .line 284
    :cond_10
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_fc

    .line 286
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v0, Lcom/android/server/pm/Computer;

    .line 287
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_28
    if-ltz v1, :cond_fc

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    .line 297
    iget v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_42

    goto/16 :goto_f8

    .line 301
    :cond_42
    iget-boolean v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v3, v0, v4}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v3

    if-eqz v3, :cond_f8

    .line 303
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_56

    goto/16 :goto_f8

    .line 311
    :cond_56
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntentMatchingFlags()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_68

    and-int/lit8 v6, v4, 0x1

    if-eq v6, v2, :cond_68

    and-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_66

    goto :goto_68

    :cond_66
    move v6, v2

    goto :goto_69

    :cond_68
    :goto_68
    move v6, v5

    :goto_69
    and-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_70

    move v4, v2

    goto :goto_71

    :cond_70
    move v4, v5

    .line 325
    :goto_71
    iget-object v7, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7b

    move v7, v2

    goto :goto_7c

    :cond_7b
    move v7, v5

    .line 328
    :goto_7c
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_85
    if-ge v9, v8, :cond_a4

    .line 329
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v10

    .line 330
    iget-object v11, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a1

    move v8, v2

    goto :goto_a5

    :cond_a1
    add-int/lit8 v9, v9, 0x1

    goto :goto_85

    :cond_a4
    move v8, v5

    :goto_a5
    if-eqz v6, :cond_ae

    if-eqz v7, :cond_ab

    if-eqz v4, :cond_ad

    :cond_ab
    if-nez v8, :cond_ae

    :cond_ad
    move v5, v2

    :cond_ae
    if-eqz v7, :cond_b4

    .line 345
    invoke-virtual {p0, v2, v5}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    goto :goto_ba

    :cond_b4
    if-nez v8, :cond_ba

    const/4 v4, 0x3

    .line 348
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_ba
    :goto_ba
    if-nez v7, :cond_be

    if-nez v8, :cond_c3

    .line 354
    :cond_be
    iget-object v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    :cond_c3
    if-eqz v5, :cond_f8

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent does not match component\'s intent filter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access blocked: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_f8
    :goto_f8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_28

    :cond_fc
    :goto_fc
    return-void
.end method

.method public static filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 8

    if-eqz p1, :cond_5a

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 470
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 471
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 472
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_5a

    :cond_1b
    const-wide/32 v0, 0xdabca61

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    move-result v0

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_29
    if-ltz v1, :cond_53

    .line 481
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 482
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_3e

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 483
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v4, :cond_49

    goto :goto_50

    .line 486
    :cond_3e
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_50

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 487
    iget-boolean v4, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v4, :cond_49

    goto :goto_50

    :cond_49
    if-nez v0, :cond_4c

    goto :goto_54

    .line 497
    :cond_4c
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v2

    :cond_50
    :goto_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_53
    move v2, v3

    :goto_54
    if-eqz v2, :cond_5a

    const/4 p1, 0x2

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .registers 4

    .line 111
    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_18

    if-eqz p2, :cond_f

    .line 113
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    .line 115
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    .line 117
    :cond_18
    instance-of p2, p0, Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_25

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object p0

    return-object p0

    .line 121
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V
    .registers 17

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_9
    move-object v7, v0

    goto :goto_1b

    .line 132
    :cond_b
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9

    .line 133
    :goto_1b
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_22
    move-object v4, v0

    goto :goto_2d

    .line 134
    :cond_24
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 139
    :goto_2d
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x23d

    move v2, p0

    move v3, p1

    move-object v8, p4

    move/from16 v10, p5

    .line 135
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 146
    invoke-virtual {p1, p2, p0, p3}, Landroid/app/ActivityManagerInternal;->triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V

    return-void
.end method
