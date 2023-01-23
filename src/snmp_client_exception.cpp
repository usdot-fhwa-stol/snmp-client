#include "snmp_client_exception.h"

namespace fwha_stol {
namespace snmp_client {

    snmp_client_exception::snmp_client_exception(const std::string &msg): std::runtime_error(msg){};

    snmp_client_exception::~snmp_client_exception() = default;
}
}