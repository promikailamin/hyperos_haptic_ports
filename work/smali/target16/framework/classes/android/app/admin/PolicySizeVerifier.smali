.class public Landroid/app/admin/PolicySizeVerifier;
.super Ljava/lang/Object;
.source "PolicySizeVerifier.java"


# static fields
.field public static final blacklist MAX_LONG_SUPPORT_MESSAGE_LENGTH:I = 0x4e20

.field public static final blacklist MAX_ORG_NAME_LENGTH:I = 0xc8

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xdf

.field public static final blacklist MAX_PROFILE_NAME_LENGTH:I = 0xc8

.field public static final blacklist MAX_SHORT_SUPPORT_MESSAGE_LENGTH:I = 0xc8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enforceMaxBundleFieldsLength(Landroid/os/Bundle;)V
    .registers 10

    .line 95
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 96
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9f

    .line 98
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 99
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    const-string/jumbo v3, "key in Bundle"

    invoke-static {v2, v3}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    instance-of v4, v3, Ljava/lang/String;

    const-string/jumbo v5, "string value in Bundle with key"

    if-eqz v4, :cond_50

    check-cast v3, Ljava/lang/String;

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 105
    :cond_50
    instance-of v4, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_73

    check-cast v3, [Ljava/lang/String;

    .line 106
    array-length v4, v3

    :goto_58
    if-ge v6, v4, :cond_9c

    aget-object v7, v3, v6

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 110
    :cond_73
    instance-of v2, v3, Landroid/os/Bundle;

    if-eqz v2, :cond_7d

    check-cast v3, Landroid/os/Bundle;

    .line 111
    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 113
    :cond_7d
    instance-of v2, v3, [Landroid/os/Parcelable;

    if-eqz v2, :cond_9c

    check-cast v3, [Landroid/os/Parcelable;

    .line 114
    array-length v2, v3

    :goto_84
    if-ge v6, v2, :cond_9c

    aget-object v4, v3, v6

    .line 115
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_94

    .line 119
    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 116
    :cond_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle-array can only hold Bundles"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_9c
    :goto_9c
    goto :goto_1c

    .line 123
    :cond_9d
    goto/16 :goto_8

    .line 124
    :cond_9f
    return-void
.end method

.method public static blacklist enforceMaxComponentNameLength(Landroid/content/ComponentName;)V
    .registers 2

    .line 130
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "componentName"

    invoke-static {p0, v0}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static blacklist enforceMaxPackageNameLength(Ljava/lang/String;)V
    .registers 2

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xdf

    if-gt p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    .line 61
    :goto_c
    const-string v0, "Package name too long"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static blacklist enforceMaxStringLength(Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .registers 10

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 71
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_90

    .line 73
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    .line 74
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    instance-of v3, v2, Ljava/lang/String;

    const-string/jumbo v4, "string value in "

    if-eqz v3, :cond_61

    check-cast v2, Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 79
    :cond_61
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_84

    check-cast v2, [Ljava/lang/String;

    .line 80
    array-length v3, v2

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v3, :cond_8d

    aget-object v6, v2, v5

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 83
    :cond_84
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_8d

    check-cast v2, Landroid/os/PersistableBundle;

    .line 84
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_8d
    :goto_8d
    goto :goto_1c

    .line 87
    :cond_8e
    goto/16 :goto_8

    .line 88
    :cond_90
    return-void
.end method

.method public static blacklist enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 51
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/modules/utils/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J
    :try_end_4
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_4} :catch_6

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_6
    move-exception p0

    .line 53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " too long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist truncateIfLonger(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    .line 138
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_9

    goto :goto_f

    .line 140
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_10

    .line 139
    :cond_f
    :goto_f
    nop

    .line 138
    :goto_10
    return-object p0
.end method
