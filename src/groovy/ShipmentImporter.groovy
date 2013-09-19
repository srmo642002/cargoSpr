
import org.grails.plugins.excelimport.*
/**
 * Created with IntelliJ IDEA.
 * User: USER
 * Date: 9/5/13
 * Time: 1:13 PM
 * To change this template use File | Settings | File Templates.
 */

class ShipmentImporter extends AbstractExcelImporter{
//    def excelImportService
    static Map CONFIG_BOOK_COLUMN_MAP = [

            sheet: 'Sheet1',
//                startRow: 2,

            columnMap: [

                    'B': 'item',
                    'C': 'typeOfPackage',
                    'D': 'commodity',
                    'E': 'unitOfMeasure',
                    'F': 'grade',
                    'G': 'rateOrCharge',
                    'H': 'noOfPackage',
                    'I': 'grossWeight',
                    'J': 'totalWeight',
                    'K': 'chargeableWeight',
                    'L': 'width',
                    'M': 'length',
                    'N': 'height',
                    'O': 'volume',
                    'P': 'chargeableRate',
                    'Q': 'totalVolume'
            ]
    ]

//can also configure injection in resources.groovy def getExcelImportService() { ExcelImportService.getService() }

    public ShipmentImporter(fileName) { super(fileName) }

    List<Map> getCargoItems() { List list = excelImportService.columns(workbook, CONFIG_BOOK_COLUMN_MAP) }

}
