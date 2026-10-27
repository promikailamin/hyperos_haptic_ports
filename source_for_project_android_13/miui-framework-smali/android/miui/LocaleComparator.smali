.class public Landroid/miui/LocaleComparator;
.super Ljava/lang/Object;
.source "LocaleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist NON_TOP_LOCALE_INDEX:I

.field private static final blacklist TOP_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 16
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1d

    .line 17
    const-string v1, "zh_CN"

    const-string v2, "en_US"

    const-string v3, "en_GB"

    const-string v4, "hi_IN"

    const-string v5, "in_ID"

    const-string v6, "ms_MY"

    const-string v7, "vi_VN"

    const-string v8, "zh_TW"

    const-string v9, "th_TH"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    goto :goto_29

    .line 19
    :cond_1d
    const-string v0, "zh_CN"

    const-string v1, "zh_TW"

    const-string v2, "en_US"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    .line 23
    :goto_29
    sget-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 6
    .param p1, "lhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 36
    invoke-virtual {p0, p1}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    .line 37
    .local v0, "lpos":I
    invoke-virtual {p0, p2}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    .line 38
    .local v1, "rpos":I
    if-ne v0, v1, :cond_f

    invoke-virtual {p1, p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v2

    goto :goto_11

    :cond_f
    sub-int v2, v0, v1

    :goto_11
    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 12
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Landroid/miui/LocaleComparator;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 5
    .param p1, "localeInfo"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 27
    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 28
    return v0

    .line 26
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    .end local v0    # "i":I
    :cond_1a
    sget v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return v0
.end method
