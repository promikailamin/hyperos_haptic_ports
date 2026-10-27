.class public final Lcom/android/server/accessibility/ForceInvertOverrideState;
.super Ljava/lang/Record;
.source "ForceInvertOverrideState.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "packagesToEnable",
        "packagesToDisable"
    }
    componentSignatures = {
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/List<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/List<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Ljava/util/List;,
        Ljava/util/List;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/server/accessibility/ForceInvertOverrideState;


# instance fields
.field public final packagesToDisable:Ljava/util/List;

.field public final packagesToEnable:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/server/accessibility/ForceInvertOverrideState;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 43
    invoke-direct {v0, v1, v1}, Lcom/android/server/accessibility/ForceInvertOverrideState;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/android/server/accessibility/ForceInvertOverrideState;->EMPTY:Lcom/android/server/accessibility/ForceInvertOverrideState;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    return-void
.end method

.method public static loadFrom(Landroid/content/Context;I)Lcom/android/server/accessibility/ForceInvertOverrideState;
    .registers 5

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    const-string v1, "accessibility_force_invert_color_override_packages_to_disable"

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/ForceInvertOverrideState;->parseCsv(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 53
    const-string v2, "accessibility_force_invert_color_override_packages_to_enable"

    invoke-static {v0, p1, v2}, Lcom/android/server/accessibility/ForceInvertOverrideState;->parseCsv(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107008a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_23

    .line 58
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    .line 59
    :cond_23
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 62
    :goto_27
    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 63
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance p0, Lcom/android/server/accessibility/ForceInvertOverrideState;

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/ForceInvertOverrideState;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static parseCsv(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    .line 90
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    .line 92
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 95
    :cond_c
    const-string p1, ","

    invoke-static {p0, p1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/accessibility/ForceInvertOverrideState;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/server/accessibility/ForceInvertOverrideState;

    iget-object v0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ForceInvertOverrideState;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getStateForPackage(Ljava/lang/String;)I
    .registers 4

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 77
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x2

    return p0

    .line 81
    :cond_12
    iget-object p0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToEnable:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/ForceInvertOverrideState;->packagesToDisable:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/ForceInvertOverrideState$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/android/server/accessibility/ForceInvertOverrideState;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/accessibility/ForceInvertOverrideState;

    const-string/jumbo v1, "packagesToEnable;packagesToDisable"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
