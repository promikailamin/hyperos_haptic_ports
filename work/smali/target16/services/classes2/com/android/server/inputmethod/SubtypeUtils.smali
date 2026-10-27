.class public abstract Lcom/android/server/inputmethod/SubtypeUtils;
.super Ljava/lang/Object;
.source "SubtypeUtils.java"


# static fields
.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field public static final sCacheLock:Ljava/lang/Object;

.field public static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field public static sCachedResult:Ljava/util/ArrayList;

.field public static sCachedSystemLocales:Landroid/os/LocaleList;

.field public static final sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;


# direct methods
.method public static synthetic $r8$lambda$N5Ol3_HMUmz80oOVs2S2bVFGXzM(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;
    .registers 1

    if-eqz p0, :cond_7

    .line 134
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SubtypeUtils;->sCacheLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/server/inputmethod/SubtypeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/inputmethod/SubtypeUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SubtypeUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    return-void
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 74
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_66

    .line 76
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    if-eqz p2, :cond_34

    .line 78
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 80
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 81
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_61

    .line 85
    :cond_34
    new-instance v4, Ljava/util/Locale;

    .line 86
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v5}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_61

    .line 91
    :cond_50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_64

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_64
    :goto_64
    const/4 p0, 0x1

    return p0

    :cond_66
    return v0
.end method

.method public static findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_57

    .line 261
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_57

    .line 264
    :cond_a
    invoke-static {p2}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v0

    :goto_16
    if-ge v4, v2, :cond_51

    .line 270
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 271
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static {v7}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_38

    .line 275
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4e

    :cond_38
    if-nez v0, :cond_3b

    move-object v0, v6

    .line 279
    :cond_3b
    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    move-object v3, v6

    goto :goto_51

    :cond_43
    if-nez v5, :cond_4e

    .line 283
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    const/4 v3, 0x1

    move v5, v3

    move-object v3, v6

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_51
    :goto_51
    if-nez v3, :cond_56

    if-eqz p3, :cond_56

    return-object v0

    :cond_56
    return-object v3

    :cond_57
    :goto_57
    return-object v0
.end method

.method public static getCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .line 322
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 323
    const-string/jumbo v1, "selected_input_method_subtype"

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v2, :cond_1b

    if-eqz p2, :cond_1b

    .line 326
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->isValidSubtypeHashCode(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object p2

    .line 330
    :cond_1b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2a

    .line 332
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0

    :cond_2a
    const/4 v1, 0x1

    .line 337
    invoke-virtual {p1, p0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    .line 339
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    return-object p2

    .line 344
    :cond_36
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v1, :cond_44

    .line 345
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodSubtype;

    return-object p0

    .line 347
    :cond_44
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    const-string p2, "keyboard"

    invoke-static {p0, p2, p1, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    if-eqz p2, :cond_59

    return-object p2

    :cond_59
    const/4 p2, 0x0

    .line 353
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public static getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 4

    .line 139
    sget-object v0, Lcom/android/server/inputmethod/SubtypeUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v1, p1, :cond_1a

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    goto :goto_30

    .line 145
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_18

    .line 151
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getImplicitlyApplicableSubtypesImpl(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    monitor-enter v0

    .line 154
    :try_start_20
    sput-object p0, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 155
    sput-object p1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 156
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p0, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 157
    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw p0

    .line 145
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_18

    throw p0
.end method

.method public static getImplicitlyApplicableSubtypesImpl(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 11

    .line 163
    invoke-static {p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 166
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 169
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move v4, v0

    :goto_23
    if-ge v4, v2, :cond_41

    .line 172
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 173
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 174
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 176
    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 180
    :cond_41
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_51

    .line 181
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 184
    :cond_51
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    .line 188
    :goto_5c
    const-string v6, "keyboard"

    if-ge v5, v2, :cond_8e

    .line 189
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 190
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 192
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 194
    :cond_74
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_82
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 201
    :cond_8e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    sget-object v5, Lcom/android/server/inputmethod/SubtypeUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v4, v5, p0, v2}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d9

    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v0

    :goto_a3
    if-ge v7, v5, :cond_b5

    .line 209
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 210
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v8

    if-eqz v8, :cond_b2

    goto :goto_d9

    :cond_b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 216
    :cond_b5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_b9
    if-ge v0, v5, :cond_d9

    .line 218
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 219
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    const-string v8, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 222
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 228
    :cond_d9
    :goto_d9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x1

    .line 229
    invoke-static {p1, v6, v1, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    if-eqz p1, :cond_e9

    .line 232
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_e9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 238
    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    goto :goto_f1

    :cond_103
    return-object v2
.end method

.method public static getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .registers 5

    if-eqz p0, :cond_17

    .line 122
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 124
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_14

    return v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    .line 102
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v0
.end method

.method public static isValidSubtypeHashCode(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .registers 2

    .line 108
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
