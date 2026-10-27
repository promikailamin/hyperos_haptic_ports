.class public abstract Lcom/android/server/inputmethod/InputMethodInfoUtils;
.super Ljava/lang/Object;
.source "InputMethodInfoUtils.java"


# static fields
.field public static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;


# direct methods
.method public static bridge synthetic -$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 62
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public static chooseSystemVoiceIme(Lcom/android/server/inputmethod/InputMethodMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 8

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 216
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 218
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 219
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-object p2

    .line 223
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMap;->size()I

    move-result p2

    const/4 v0, 0x0

    move-object v2, v1

    :goto_25
    if-ge v0, p2, :cond_5f

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodMap;->valueAt(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_5c

    .line 229
    :cond_32
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_5c

    :cond_3d
    if-eqz v2, :cond_5b

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At most one InputMethodService can be published in systemSpeechRecognizer: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring all of them."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5b
    move-object v2, v3

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_5f
    return-object v2
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 11

    .line 174
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getFallbackLocaleForDefaultIme(Ljava/util/List;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 180
    invoke-static {p0}, Lcom/android/server/inputmethod/LocaleUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    .line 182
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/List;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-result-object v1

    if-nez p2, :cond_1b

    const/4 v6, 0x1

    .line 184
    sget-object v7, Lcom/android/server/inputmethod/SubtypeUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-result-object p0

    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/List;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 188
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/List;Landroid/content/Context;)Ljava/util/Locale;
    .registers 20

    move-object/from16 v0, p0

    .line 297
    sget-object v1, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_2b

    aget-object v8, v1, v4

    move v11, v3

    .line 298
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_28

    .line 299
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v9, 0x1

    const-string v10, "keyboard"

    const/4 v7, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    return-object v8

    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 308
    :cond_2b
    sget-object v1, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v2, v1

    move v4, v3

    :goto_2f
    if-ge v4, v2, :cond_55

    aget-object v15, v1, v4

    move v5, v3

    .line 309
    :goto_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 310
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    const/16 v16, 0x1

    const-string v17, "keyboard"

    const/4 v14, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v17}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    return-object v15

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 317
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found no fallback locale. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodInfoUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMinimumKeyboardSetWithSystemLocale(Ljava/util/List;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
    .registers 11

    .line 136
    new-instance v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodInfoUtils-IA;)V

    const/4 v5, 0x1

    .line 137
    const-string v6, "keyboard"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 139
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_5e

    :cond_17
    const/4 v5, 0x0

    .line 142
    const-string v6, "keyboard"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    move-object p0, v4

    .line 144
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_5e

    :cond_26
    const/4 v5, 0x1

    .line 147
    const-string v6, "keyboard"

    const/4 v3, 0x1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 149
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_5e

    :cond_35
    const/4 v5, 0x0

    .line 152
    const-string v6, "keyboard"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_5e

    :cond_43
    const/4 v5, 0x1

    .line 157
    const-string v6, "keyboard"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 159
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_5e

    :cond_51
    const/4 v5, 0x0

    .line 162
    const-string v6, "keyboard"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5f

    :goto_5e
    return-object v0

    .line 167
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No software keyboard is found. imis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " systemLocale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " fallbackLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_55

    .line 245
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_55

    .line 250
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    :cond_f
    :goto_f
    if-lez v1, :cond_4a

    add-int/lit8 v1, v1, -0x1

    .line 254
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 255
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_f

    .line 258
    :cond_20
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string v5, "keyboard"

    invoke-static {v3, v4, v0, v5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 260
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMostApplicableDefaultIME: found %s"

    invoke-static {p0, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_40
    if-gez v2, :cond_f

    .line 263
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_f

    move v2, v1

    goto :goto_f

    .line 267
    :cond_4a
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0

    .line 246
    :cond_55
    :goto_55
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "getMostApplicableDefaultIME: enabledIMEs are empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 5

    .line 272
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_11

    .line 275
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 278
    :cond_11
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 281
    :cond_18
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    move p2, v1

    :goto_1d
    if-ge p2, p1, :cond_2e

    .line 283
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_2e
    return v1
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 8

    .line 324
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_11

    .line 327
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 330
    :cond_11
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static marshal(Landroid/view/inputmethod/InputMethodInfo;)[B
    .registers 3

    .line 344
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_12

    const/4 v1, 0x0

    .line 345
    :try_start_5
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_10
    move-exception p0

    goto :goto_14

    :catchall_12
    move-exception p0

    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    :cond_19
    throw p0
.end method
