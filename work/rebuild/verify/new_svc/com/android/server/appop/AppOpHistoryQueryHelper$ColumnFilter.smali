.class final enum Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;
.super Ljava/lang/Enum;
.source "AppOpHistoryQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum ATTR_TAG:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum BEGIN_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum END_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum OP_CODE_EQUAL:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum OP_CODE_IN:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum OP_FLAGS:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum PACKAGE_NAME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public static final enum UID:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;


# instance fields
.field final mCondition:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;
    .registers 8

    .line 182
    sget-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->UID:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v2, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v3, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v4, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v5, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v6, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v7, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 183
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x0

    const-string/jumbo v2, "package_name = ? "

    const-string v3, "PACKAGE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 184
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x1

    const-string/jumbo v2, "uid = ? "

    const-string v3, "UID"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->UID:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 185
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x2

    const-string v2, "attribution_tag = ? "

    const-string v3, "ATTR_TAG"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 186
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x3

    const-string v2, "access_time <= ? "

    const-string v3, "END_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 187
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x4

    const-string/jumbo v2, "op_code = ? "

    const-string v3, "OP_CODE_EQUAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 188
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x5

    const-string v2, "access_time + (CASE WHEN access_duration = -1 THEN 0 ELSE access_duration END) >= ? "

    const-string v3, "BEGIN_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 190
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x6

    const-string v2, "(op_flags & ? ) != 0"

    const-string v3, "OP_FLAGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 191
    new-instance v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    const/4 v1, 0x7

    const-string/jumbo v2, "op_code IN "

    const-string v3, "OP_CODE_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 182
    invoke-static {}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->$values()[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->$VALUES:[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->mCondition:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;
    .registers 2

    .line 182
    const-class v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    return-object p0
.end method

.method public static values()[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;
    .registers 1

    .line 182
    sget-object v0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->$VALUES:[Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-virtual {v0}, [Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->mCondition:Ljava/lang/String;

    return-object p0
.end method
