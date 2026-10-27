.class public final enum Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
.super Ljava/lang/Enum;
.source "MouseKeysInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;


# instance fields
.field private final mNumpadKeyCode:I

.field private final mPrimaryKeyCode:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .registers 13

    .line 210
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v2, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v3, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v4, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v6, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v7, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v8, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v9, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v10, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v11, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v12, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    filled-new-array/range {v0 .. v12}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 211
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xe

    const/16 v2, 0x97

    const-string v3, "DIAGONAL_UP_LEFT_MOVE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 212
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xf

    const/16 v2, 0x98

    const-string v3, "UP_MOVE_OR_SCROLL"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 213
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x10

    const/16 v2, 0x99

    const-string v3, "DIAGONAL_UP_RIGHT_MOVE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 214
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x31

    const/16 v2, 0x94

    const-string v3, "LEFT_MOVE_OR_SCROLL"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 215
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x2b

    const/16 v2, 0x96

    const-string v3, "RIGHT_MOVE_OR_SCROLL"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 216
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x26

    const/16 v2, 0x91

    const-string v3, "DIAGONAL_DOWN_LEFT_MOVE"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 217
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x27

    const/16 v2, 0x92

    const-string v3, "DOWN_MOVE_OR_SCROLL"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 218
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x28

    const/16 v2, 0x93

    const-string v3, "DIAGONAL_DOWN_RIGHT_MOVE"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 219
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x25

    const/16 v2, 0x95

    const-string v3, "LEFT_CLICK"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 220
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x9

    const/16 v2, 0x4c

    const-string v3, "RIGHT_CLICK"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 221
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xa

    const/16 v2, 0x29

    const-string v3, "HOLD"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 222
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xb

    const/16 v2, 0x37

    const-string v3, "RELEASE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 223
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xc

    const/16 v2, 0x38

    const-string v3, "SCROLL_TOGGLE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 210
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mPrimaryKeyCode:I

    .line 230
    iput p4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mNumpadKeyCode:I

    return-void
.end method

.method public static from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .registers 3

    .line 278
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_f

    .line 280
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllMouseKeys(Z)[I
    .registers 8

    .line 262
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 264
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v3, v2, :cond_1e

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 265
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCodeValue(Z)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .registers 2

    .line 210
    const-class v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .registers 1

    .line 210
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object v0
.end method


# virtual methods
.method public getKeyCode(Landroid/view/InputDevice;Z)I
    .registers 4

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCodeValue(Z)I

    move-result p0

    .line 251
    invoke-virtual {p1}, Landroid/view/InputDevice;->getGeneration()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    return p0

    .line 254
    :cond_c
    invoke-virtual {p1, p0}, Landroid/view/InputDevice;->getKeyCodeForKeyLocation(I)I

    move-result p0

    return p0
.end method

.method public final getKeyCodeValue(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 236
    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mPrimaryKeyCode:I

    return p0

    .line 238
    :cond_5
    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mNumpadKeyCode:I

    return p0
.end method
