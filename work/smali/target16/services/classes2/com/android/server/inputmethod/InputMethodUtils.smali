.class public abstract Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# direct methods
.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z
    .registers 9

    const-wide/16 v2, 0x0

    .line 192
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move v4, p1

    move-object v1, p2

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;JII)Z

    move-result p0

    return p0
.end method

.method public static varargs concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 316
    new-instance v1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 318
    new-instance v2, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-static {p0, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 319
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 321
    :cond_21
    array-length p0, p1

    const/4 v2, 0x0

    :goto_23
    if-ge v2, p0, :cond_36

    aget-object v3, p1, v2

    .line 322
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 323
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 324
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 327
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertIdToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    .line 339
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getEnabledInputMethodIdsForFiltering(Landroid/content/Context;I)Ljava/util/List;
    .registers 3

    .line 267
    const-string p0, "enabled_input_methods"

    const/4 v0, 0x0

    .line 268
    invoke-static {p0, v0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public static isSoftInputModeStateVisibleAllowed(II)Z
    .registers 4

    .line 0
    const/16 v0, 0x1c

    const/4 v1, 0x1

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 p0, p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_11

    return v0

    :cond_11
    return v1
.end method

.method public static resolveUserId(IILjava/io/PrintWriter;)[I
    .registers 5

    .line 224
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 225
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, -0x1

    if-ne p0, v1, :cond_10

    .line 228
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v1, -0x2

    if-ne p0, v1, :cond_15

    move p0, p1

    goto :goto_30

    :cond_15
    const/4 p1, 0x0

    if-gez p0, :cond_2a

    if-eqz p2, :cond_27

    .line 236
    const-string v0, "Pseudo user ID "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 238
    const-string p0, " is not supported."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    :cond_27
    new-array p0, p1, [I

    return-object p0

    .line 241
    :cond_2a
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 251
    :goto_30
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :cond_35
    if-eqz p2, :cond_44

    .line 245
    const-string v0, "User #"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 247
    const-string p0, " does not exit."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    :cond_44
    new-array p0, p1, [I

    return-object p0
.end method

.method public static setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 7

    .line 149
    const-string v0, " userId="

    const-string v1, "InputMethodUtils"

    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_36

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    return-void

    :cond_f
    :goto_f
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 161
    :try_start_11
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {v1, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_36
    move-exception v2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {v1, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 10

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 89
    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_66

    .line 94
    :cond_11
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerInternal;->get()Lcom/android/server/textservices/TextServicesManagerInternal;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 96
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v4, v2, :cond_66

    aget-object v5, v0, v4

    move v6, v3

    .line 101
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3f

    .line 102
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 103
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_63

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_3f
    if-eqz v1, :cond_4c

    .line 113
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_63

    :cond_4c
    const-wide/32 v6, 0x8000

    .line 123
    :try_start_4f
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v6

    .line 122
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_57} :catch_63

    if-nez v6, :cond_5a

    goto :goto_63

    .line 137
    :cond_5a
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_63

    .line 141
    invoke-static {p0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    :catch_63
    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_66
    :goto_66
    return-void
.end method

.method public static splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_33

    .line 286
    :cond_7
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 288
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 291
    :cond_18
    :goto_18
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 292
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 296
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_18

    :cond_33
    :goto_33
    return-void
.end method
