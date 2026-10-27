.class public Lmiui/provider/SettingsStringUtil$ComponentNameSet;
.super Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "colonSeparatedPackageNames"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static blacklist add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 137
    new-instance v0, Lmiui/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 139
    return-object p0

    .line 141
    :cond_c
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist contains(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 146
    new-instance v0, Lmiui/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 148
    return-object p0

    .line 150
    :cond_c
    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 128
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist itemToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # Landroid/content/ComponentName;

    .line 133
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 121
    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->itemToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
