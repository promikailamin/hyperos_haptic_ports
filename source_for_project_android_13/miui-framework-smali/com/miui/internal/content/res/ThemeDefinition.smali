.class public Lcom/miui/internal/content/res/ThemeDefinition;
.super Ljava/lang/Object;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;,
        Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;,
        Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;,
        Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;,
        Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    }
.end annotation


# static fields
.field static final blacklist TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field static final blacklist TAG_COLOR:Ljava/lang/String; = "color"

.field static final blacklist TAG_DIMEN:Ljava/lang/String; = "dimen"

.field static final blacklist TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field static final blacklist TAG_INTEGER:Ljava/lang/String; = "integer"

.field static final blacklist TAG_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field static final blacklist TAG_STRING:Ljava/lang/String; = "string"

.field static final blacklist TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
