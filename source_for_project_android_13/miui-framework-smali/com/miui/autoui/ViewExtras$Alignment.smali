.class public final enum Lcom/miui/autoui/ViewExtras$Alignment;
.super Ljava/lang/Enum;
.source "ViewExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/ViewExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/autoui/ViewExtras$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/miui/autoui/ViewExtras$Alignment;

.field public static final enum blacklist ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

.field public static final enum blacklist ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

.field public static final enum blacklist ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 57
    new-instance v0, Lcom/miui/autoui/ViewExtras$Alignment;

    const-string v1, "ALIGN_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/ViewExtras$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 58
    new-instance v1, Lcom/miui/autoui/ViewExtras$Alignment;

    const-string v3, "ALIGN_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/autoui/ViewExtras$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_RIGHT:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 59
    new-instance v3, Lcom/miui/autoui/ViewExtras$Alignment;

    const-string v5, "ALIGN_CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/autoui/ViewExtras$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_CENTER:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 56
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/autoui/ViewExtras$Alignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/autoui/ViewExtras$Alignment;->$VALUES:[Lcom/miui/autoui/ViewExtras$Alignment;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/miui/autoui/ViewExtras$Alignment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v0
.end method

.method public static blacklist values()[Lcom/miui/autoui/ViewExtras$Alignment;
    .registers 1

    .line 56
    sget-object v0, Lcom/miui/autoui/ViewExtras$Alignment;->$VALUES:[Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0}, [Lcom/miui/autoui/ViewExtras$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v0
.end method
