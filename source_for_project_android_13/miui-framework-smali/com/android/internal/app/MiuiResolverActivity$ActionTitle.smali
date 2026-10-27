.class final enum Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "MiuiResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final blacklist BROWSABLE_APP_TITLE_RES:I = 0x10409d3

.field public static final blacklist BROWSABLE_HOST_APP_TITLE_RES:I = 0x10409d1

.field public static final blacklist BROWSABLE_HOST_TITLE_RES:I = 0x10409d0

.field public static final blacklist BROWSABLE_TITLE_RES:I = 0x10409d2

.field public static final enum blacklist CAPTURE_IMAGE:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist DEFAULT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist EDIT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist HOME:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist SEND:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist SENDTO:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist SEND_MULTIPLE:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

.field public static final enum blacklist VIEW:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;


# instance fields
.field public final blacklist action:Ljava/lang/String;

.field public final blacklist labelRes:I

.field public final blacklist namedTitleRes:I

.field public final blacklist titleRes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 22

    .line 251
    new-instance v7, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x10409da

    const v5, 0x10409dc

    const v6, 0x10409db

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 255
    new-instance v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v9, "EDIT"

    const/4 v10, 0x1

    const-string v11, "android.intent.action.EDIT"

    const v12, 0x10409c6

    const v13, 0x10409c8

    const v14, 0x10409c7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 259
    new-instance v1, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v16, "SEND"

    const/16 v17, 0x2

    const-string v18, "android.intent.action.SEND"

    const v19, 0x10409d4

    const v20, 0x10409d6

    const v21, 0x10409d5

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 263
    new-instance v2, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v9, "SENDTO"

    const/4 v10, 0x3

    const-string v11, "android.intent.action.SENDTO"

    const v12, 0x10409d7

    const v13, 0x10409d9

    const v14, 0x10409d8

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 267
    new-instance v3, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v16, "SEND_MULTIPLE"

    const/16 v17, 0x4

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 271
    new-instance v4, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v9, "CAPTURE_IMAGE"

    const/4 v10, 0x5

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    const v12, 0x10409cd

    const v13, 0x10409cf

    const v14, 0x10409ce

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 275
    new-instance v5, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v16, "DEFAULT"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const v19, 0x10409c3

    const v20, 0x10409c5

    const v21, 0x10409c4

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 279
    new-instance v6, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const-string v9, "HOME"

    const/4 v10, 0x7

    const-string v11, "android.intent.action.MAIN"

    const v12, 0x10409ca

    const v13, 0x10409cc

    const v14, 0x10409cb

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    .line 250
    const/16 v8, 0x8

    new-array v8, v8, [Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    sput-object v8, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 300
    iput-object p3, p0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 301
    iput p4, p0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->titleRes:I

    .line 302
    iput p5, p0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->namedTitleRes:I

    .line 303
    iput p6, p0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->labelRes:I

    .line 304
    return-void
.end method

.method public static blacklist forAction(Ljava/lang/String;)Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    .registers 6
    .param p0, "action"    # Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 308
    .local v3, "title":Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v3, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 309
    return-object v3

    .line 307
    .end local v3    # "title":Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 312
    :cond_1c
    sget-object v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 250
    const-class v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;
    .registers 1

    .line 250
    sget-object v0, Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/MiuiResolverActivity$ActionTitle;

    return-object v0
.end method
