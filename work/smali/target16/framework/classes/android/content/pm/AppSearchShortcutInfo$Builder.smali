.class public Landroid/content/pm/AppSearchShortcutInfo$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "AppSearchShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 451
    const-string v0, "Shortcut"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    .line 452
    return-void
.end method

.method static synthetic blacklist lambda$setCapabilityBindings$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$setCategories$0(I)[Ljava/lang/String;
    .registers 1

    .line 518
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist lambda$setIntents$1(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$setIntents$2(I)[Ljava/lang/String;
    .registers 1

    .line 554
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 445
    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/content/pm/AppSearchShortcutInfo;
    .registers 3

    .line 679
    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "flags"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 680
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public blacklist setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 470
    if-eqz p1, :cond_f

    .line 471
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 473
    :cond_f
    return-object p0
.end method

.method public blacklist setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    .line 654
    if-eqz p1, :cond_78

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 655
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 656
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 657
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 658
    nop

    .line 659
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 660
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 661
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v6}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 663
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 664
    goto :goto_31

    .line 665
    :cond_5c
    goto :goto_16

    .line 666
    :cond_5d
    const/4 p1, 0x0

    new-array v2, p1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "capability"

    invoke-virtual {p0, v2, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 667
    new-array p1, p1, [Ljava/lang/String;

    .line 668
    invoke-interface {v1, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 667
    const-string v0, "capabilityBindings"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 670
    :cond_78
    return-object p0
.end method

.method public blacklist setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    .line 517
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 518
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, "categories"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 520
    :cond_1c
    return-object p0
.end method

.method public blacklist setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 506
    const-string v0, "disabledMessage cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 507
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 506
    const-string v0, "disabledMessage"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 509
    :cond_19
    return-object p0
.end method

.method public blacklist setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 645
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "disabledReason"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 646
    return-object p0
.end method

.method public blacklist setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 595
    if-eqz p1, :cond_f

    .line 596
    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    const-string v0, "extras"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    .line 598
    :cond_f
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 605
    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smflattenFlags(I)[Ljava/lang/String;

    move-result-object p1

    .line 606
    if-eqz p1, :cond_12

    array-length v0, p1

    if-lez v0, :cond_12

    .line 607
    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 609
    :cond_12
    return-object p0
.end method

.method public blacklist setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    .line 617
    int-to-long v0, p1

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    const-string v0, "iconResId"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 618
    return-object p0
.end method

.method public blacklist setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 626
    const-string v0, "iconResName"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 628
    :cond_f
    return-object p0
.end method

.method public blacklist setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 636
    const-string v0, "iconUri"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 638
    :cond_f
    return-object p0
.end method

.method public blacklist setIntent(Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    .line 528
    if-nez p1, :cond_3

    .line 529
    return-object p0

    .line 531
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 7

    .line 539
    if-eqz p1, :cond_61

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_61

    .line 542
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1e

    aget-object v3, p1, v2

    .line 543
    const-string v4, "intents cannot contain null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent\'s action must be set"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 546
    :cond_1e
    array-length v0, p1

    new-array v0, v0, [[B

    .line 547
    move v2, v1

    :goto_22
    array-length v3, p1

    if-ge v2, v3, :cond_3e

    .line 548
    aget-object v3, p1, v2

    .line 549
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 550
    if-nez v3, :cond_30

    .line 551
    new-array v3, v1, [B

    goto :goto_39

    :cond_30
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v4}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    :goto_39
    aput-object v3, v0, v2

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 553
    :cond_3e
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;-><init>()V

    .line 554
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 553
    const-string v1, "intents"

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 555
    const-string p1, "intentPersistableExtras"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    .line 556
    return-object p0

    .line 540
    :cond_61
    :goto_61
    return-object p0
.end method

.method public blacklist setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 459
    if-eqz p1, :cond_10

    .line 460
    invoke-virtual {p1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "locusId"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 462
    :cond_10
    return-object p0
.end method

.method public blacklist setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 494
    const-string/jumbo v0, "longLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 495
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 494
    const-string/jumbo v0, "longLabel"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 497
    :cond_1b
    return-object p0
.end method

.method public blacklist setPerson(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    .line 564
    if-nez p1, :cond_3

    .line 565
    return-object p0

    .line 567
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    .line 575
    if-eqz p1, :cond_23

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_23

    .line 578
    :cond_6
    array-length v0, p1

    new-array v0, v0, [Landroid/app/appsearch/GenericDocument;

    .line 579
    const/4 v1, 0x0

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 580
    aget-object v2, p1, v1

    .line 581
    if-nez v2, :cond_12

    goto :goto_19

    .line 582
    :cond_12
    nop

    .line 583
    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutPerson;->instance(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v2

    .line 584
    aput-object v2, v0, v1

    .line 579
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 586
    :cond_1c
    const-string/jumbo p1, "person"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 587
    return-object p0

    .line 576
    :cond_23
    :goto_23
    return-object p0
.end method

.method public blacklist setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 3

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 482
    const-string/jumbo v0, "shortLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 483
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 482
    const-string/jumbo v0, "shortLabel"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 485
    :cond_1b
    return-object p0
.end method
