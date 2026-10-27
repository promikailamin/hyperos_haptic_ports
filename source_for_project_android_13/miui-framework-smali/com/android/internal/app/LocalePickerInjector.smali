.class Lcom/android/internal/app/LocalePickerInjector;
.super Ljava/lang/Object;
.source "LocalePickerInjector.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addLocaleLanguages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_25

    if-eqz p0, :cond_25

    .line 73
    const-string v0, "ar-EG-u-nu-latn"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "fa-IR-u-nu-latn"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v0, "ur_IN-u-nu-latn"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "ur_PK-u-nu-arabext"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "sw_EK"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_25
    return-void
.end method

.method static blacklist getDisplayLanguage(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;
    .param p3, "defaultDisplayName"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 33
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 34
    aget-object v2, p2, v1

    return-object v2

    .line 32
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 37
    .end local v1    # "i":I
    :cond_16
    return-object p3
.end method

.method static blacklist removeDuplicate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_3

    return-void

    .line 17
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-lez v0, :cond_29

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 22
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method static blacklist sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
    .registers 5
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_8

    .line 43
    const v0, 0x11030089

    .local v0, "resId":I
    goto :goto_b

    .line 45
    .end local v0    # "resId":I
    :cond_8
    const v0, 0x11030088

    .line 47
    .restart local v0    # "resId":I
    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "topLocales":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/app/LocalePickerInjector$1;

    invoke-direct {v2, v1}, Lcom/android/internal/app/LocalePickerInjector$1;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 65
    return-void
.end method
