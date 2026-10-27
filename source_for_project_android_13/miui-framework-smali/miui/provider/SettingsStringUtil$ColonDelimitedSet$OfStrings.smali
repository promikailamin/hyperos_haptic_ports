.class public Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;
.super Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfStrings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "colonSeparatedItems"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 98
    return-object p0

    .line 100
    :cond_c
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist addAll(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 89
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->addAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p0

    :goto_11
    return-object v1
.end method

.method public static blacklist contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 115
    const-string v0, ":"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "elements":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static blacklist remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 108
    return-object p0

    .line 110
    :cond_c
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic blacklist itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->itemFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist itemFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 85
    return-object p1
.end method
